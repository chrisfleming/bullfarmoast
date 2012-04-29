require "rvm/capistrano"
require "./config/capistrano_database_yml"
require "bundler/capistrano"


set :application, "bullfarmoast"
set :repository,  "git@github.com:chrisfleming/bullfarmoast.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/c-deploy/bullfarmoast"
set :git_enable_submodules, 1

# Enable Remote Cache From http://help.github.com/deploy-with-capistrano/
set :deploy_via, :remote_cache



set :rvm_ruby_string, 'ruby-1.9.3-p125' 

before 'deploy:setup', 'rvm:install_rvm'
before 'deploy:setup', 'rvm:install_ruby'

set :use_sudo, false

role :web, "blur.coherentbits.co.uk"                          # Your HTTP server, Apache/etc
role :web, "oasis.coherentbits.co.uk"                          # This may be the same as your `Web` server
role :app, "blur.coherentbits.co.uk"
role :app, "oasis.coherentbits.co.uk"
role :db,  "blur.coherentbits.co.uk", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
