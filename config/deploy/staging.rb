set :stage, :staging

set :rails_env, :production

server 'extender.tk', user: 'ubuntu', roles: %w{web app db}


set :deploy_to, '/home/ubuntu/sonara-staging'
