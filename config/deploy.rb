require 'rvm/capistrano'
require 'bundler/capistrano'
require 'thinking_sphinx/deploy/capistrano'
load 'deploy/assets'

server "5.178.80.26", :web, :app, :db, primary: true

set :user, "user"
set :application, "imsat"
set :deploy_to, "/home/user/projects/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:babrovka/imsat.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true


task :copy_database_config do
   db_config = "#{shared_path}/database.yml"
   run "cp #{db_config} #{latest_release}/config/database.yml"
end


namespace(:customs) do
  task :restart do
    run "cd #{current_path}; thin restart"
   end
end

before 'deploy:update_code', 'thinking_sphinx:stop'
after 'deploy:update_code', 'thinking_sphinx:start'
after 'deploy:update_code', 'thinking_sphinx:rebuild'
before "deploy:assets:precompile", "copy_database_config"
after "deploy", "deploy:cleanup"