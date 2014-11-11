require "day_greeter/version"

module DayGreeter
    class Engine < ::Rails::Engine
    end
    def self.say
		 I18n.t(:Hello_geeks!)
	end
	def self.greet element_id=''
		jsdaygreeter = Rails.application.config.respond_to?(:jsdaygreeter) ? Rails.application.config.jsdaygreeter : false
		greet_message = jsdaygreeter ? get_msg_js(element_id).html_safe : get_msg
    end
    def self.get_msg
    	hrs=Time.now.hour
		msg=say
 		if (hrs >  0)
 			msg = I18n.t(:Morning_sunshine) 	 #REALLY early
		end
		if (hrs >=  6) 
 			msg = I18n.t(:Good_morning)      # After 6am
		end
		if (hrs >= 12)
			msg = I18n.t(:Good_afternoon);    #After 12pm
		end
		if (hrs >= 17)
			msg = I18n.t(:Good_evening);      #After 5pm
		end
		if (hrs >= 22 || hrs == 0 )
			msg = I18n.t(:Go_to_bed);  
		end	      # After 10pm
		msg
    end
    def self.get_msg_js element_id
    	"<script>document.getElementById('"+element_id+"').innerHTML = getGreeting(hrs);</script>"
    end
end
ActionView::Base.send :include, DayGreeter 
