set :deploy_user, 'app'
set :deploy_to, '/srv/http/partidopirata.com.ar'
set :branch, `git rev-parse --abbrev-ref HEAD`
set :tmp_dir, "#{fetch :deploy_to}/tmp"

server 'partidopirata.com.ar', port: 1863, user: fetch(:deploy_user), roles: %w{app web db}
