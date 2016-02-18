require 'httparty'
require_relative 'settings'

class BBBAuth
  include HTTParty
  format :json
  base_uri "https://msm-auth.bbbgame.net"

  def self.login
    params = {
      :u => $settings.email,
      :p => $settings.password,
      :t => "bbb",
      :g => 1,
      :lang => "en",
      :client_version => "1.3.8",
      #:oudid => $settings.oudid,
      :dev => $settings.device,
      :os => $settings.os,
      :mac => $settings.mac,
      :devid => $settings.android_id,
      :platform => "android"
    }
    get("/auth.php", :query => params)
  end
end


