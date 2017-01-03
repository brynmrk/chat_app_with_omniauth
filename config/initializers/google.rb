# GOOGLE_CONFIG = YAML.load_file("#{::Rails.root}/config/google.yml")[::Rails.env]
GOOGLE_SCOPES = 'contacts, plus.login, plus.me, userinfo.email, userinfo.profile, https://mail.google.com'
