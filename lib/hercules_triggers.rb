module Hercules
  class Triggers
    def self.before_deploy(options)
      options[:shell].run "mkdir -p tmp/sockets/"
      options[:shell].run "cp config/database.default.yml config/database.yml"
      options[:shell].run "rake db:migrate RAILS_ENV=production"
    end
    def self.after_deploy(options)
      cmd = options[:shell]
      cmd.run "kill -HUP `cat /home/railerim/pids/unicorn.pid`"
      cmd.run 'ps auxw | grep resque | grep -v grep  | cut -d " " -f 3 | xargs kill -TERM'
      cmd.run "rake resque:workers COUNT=2 QUEUE=* > /dev/null 2>&1 &"
    end
  end
end
