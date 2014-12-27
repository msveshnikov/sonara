OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '284009650145-g6r7146hbhta52gdb64qv8qf3i8n36mg.apps.googleusercontent.com',
           'QfiV3NranlPeazQJW7Yio5HD',
           {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  provider :facebook, '429808323844332', '3b12f7681b522bfe5f3a9009fffca0b0',
           {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  provider :vkontakte, '4682156', 'FW9goGnirqV2CfLExd0B',
           {
               scope: 'friends,email',
               display: 'popup',
               lang: 'ru',
               image_size: 'original',
               client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}
           }

end