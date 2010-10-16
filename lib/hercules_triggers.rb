module Hercules
  class Triggers
    def self.before_deploy(options)
      options[:shell].run "mkdir -p tmp/sockets/"
      options[:shell].run "cp config/database.default.yml config/database.yml"
      options[:shell].run "rake db:migrate RAILS_ENV=production"
    end
    def self.after_deploy(options)
      options[:shell].run "kill -HUP `cat /home/railerim/pids/unicorn.pid`"
      begin
        Dir.glob("/home/railerim/pids/resque_worker_*").each do |f|
          Process.kill("TERM", -1*Process.getpgid(File.open(f, 'r').read.strip.to_i))
        end
      rescue Exception => e
    end
  end
end