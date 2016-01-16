
# set path to app that will be used to configure unicorn,
# # note the trailing slash in this example
# @dir = "/var/www/sinatra/"
@dir = File.expand_path "../../../", __FILE__

# File.expand_path File.dirname(__FILE__)
#
worker_processes 2
working_directory @dir

# use correct Gemfile on restarts
before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = "#{@dir}/Gemfile"
end

#
timeout 30
#
# # Specify path to socket unicorn listens to,
# # we will use this in our nginx.conf later
listen "#{@dir}/tmp/sockets/unicorn.sock", :backlog => 64

#
# # Set process id path
pid "#{@dir}/tmp/pids/unicorn.pid"
#
# # Set log file paths
stderr_path "#{@dir}/log/unicorn.stderr.log"
stdout_path "#{@dir}/log/unicorn.stdout.log"
