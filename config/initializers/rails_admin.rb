RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.current_user_method(&:current_user)
   config.authenticate_with do
     authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' &&
      password == 'password'
    end
 end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  
end
