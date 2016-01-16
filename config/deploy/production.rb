server 'www.example.com', user: 'foo', roles: %w{web app db}
set :rails_env, :production
set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :host, "www.example.com"
set :branch, "master"

set :deploy_to, "/var/www/sinatra"
set :current_path, "#{deploy_to}/current"
# set :upload_path, "#{current_path}/public/uploads"
# set :rollbar_token, 'f4132e03bc434f6da68739f3f45fb47c'
# set :rollbar_env, Proc.new { fetch :stage }
# set :rollbar_role, Proc.new { :app }
