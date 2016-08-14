role :app, %w(hosting_imsat@sulfur.locum.ru)
role :web, %w(hosting_imsat@sulfur.locum.ru)
role :db, %w(hosting_imsat@sulfur.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
