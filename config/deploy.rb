set :scm, :middleman
set :application, 'partidopirata.com.ar'
set :repo_url, 'git@github.com:piratas-ar/partidopirata.com.ar.git'

# Defaults de capistrano que usamos
# set :branch, :master
# set :format, :pretty
# set :log_level, :debug
# set :pty, false
# set :keep_releases, 5

set :keep_filesystem_permissions, false
set :file_permissions, 0640
set :directory_permissions, 2750
set :branch, :develop

namespace :deploy do
  desc "Sitemap ping"
  task :sitemap_ping do
    run_locally do
      execute :bundle, 'exec middleman sitemap_ping'
    end
  end
end
