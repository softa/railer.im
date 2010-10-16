module Hercules
  class Triggers
    def self.before_deploy(options)
      options[:shell].run "mkdir -p tmp/sockets/"
      options[:shell].run "cp config/database.default.yml config/database.yml"
      options[:shell].run "rake db:migrate RAILS_ENV=production"
    end
    def self.after_deploy(options)
      options[:shell].run "kill -HUP `cat /home/railerim/pids/unicorn.pid`"
    end
  end
end