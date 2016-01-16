server 'staging-freeway.everants.com', user: 'robot', roles: %w{web app db}
set :rails_env, :staging
set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :host, "staging-freeway.everants.com"
set :branch, "svpn"

set :deploy_to, "/var/www/staging-freeway"
set :current_path, "#{deploy_to}/current"
set :upload_path, "#{current_path}/public/uploads"
