# app/helpers/session_helper.rb

module SessionHelper

  def get_state
    state = SecureRandom.hex(24)
    session['omniauth.state'] = state
    state
  end

  def logout_url
    domain = 'kazoku.auth0.com' # Rails.application.secrets.auth0_domain
    client_id = '6L4JLl5hPCVyOn50eS1m6ig4YY7SVcG3' #Rails.application.secrets.auth0_client_id
    request_params = {
      returnTo: root_url,
      client_id: client_id
    }

    URI::HTTPS.build(host: domain, path: '/logout', query: to_query(request_params))
  end

  private

  def to_query(hash)
    hash.map { |k, v| "#{k}=#{URI.escape(v)}" unless v.nil? }.reject(&:nil?).join('&')
  end

end