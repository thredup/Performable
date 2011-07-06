require "Performable/version"

module Performable
  
  @performable_event_path = "http://analytics.performable.com/v1/event?"
  
  # Performable - Record the supplied event
  def self.record_event(user_id, event_name, requesting_url, api_key, additional_params = '')
    if Rails.env == "production"
      performable_uri_path = @performable_event_path + "_i=" + "#{user_id}" + "&_n=" + "#{event_name}" + "&_l=" + "#{requesting_url}" + "&_t=" + "#{Time.now.to_i}" + "&_a=" + "#{api_key}" + "#{additional_params}"
      Net::HTTP.get_print URI.parse(performable_uri_path)
    end
    return performable_uri_path
  end
    
end
