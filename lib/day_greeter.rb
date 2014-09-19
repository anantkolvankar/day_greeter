require "day_greeter/version"

module DayGreeter
  	def self.say
		"Hello geeks!"
	end
	def self.greet element_id=''
		jsdaygreeter = defined?(Rails.application.config.jsdaygreeter) ? Rails.application.config.jsdaygreeter : false
puts jsdaygreeter
puts "inside greet"
# get_msg_js(element_id)
		greet_message = jsdaygreeter ? get_msg_js(element_id) : get_msg
    end
    def self.get_msg
    	hrs=Time.now.hour
		msg=say
 		if (hrs >  0)
 			msg = "Mornin' Sunshine!" 	 #REALLY early
		end
		if (hrs >=  6) 
 			msg = "Good morning"      # After 6am
		end
		if (hrs >= 12)
			msg = "Good afternoon";    #After 12pm
		end
		if (hrs >= 17)
			msg = "Good evening!";      #After 5pm
		end
		if (hrs >= 22)
			msg = "Go to bed!";  
		end	      # After 10pm
		msg
    end
    def self.get_msg_js element_id
    	puts "inside js"
    	"<script>var date =new Date(); var hrs = date.getHours(); var msg='';
						function getGreeting(hrs){
							if(hrs >  0){
		 			msg = 'Morning Sunshine' 	 //REALLY early
				}
				if(hrs >=  6){
		 			msg = 'Good morning'      //After 6am
				}
				if(hrs >= 12){
					msg = 'Good afternoon';    //After 12pm
				}
				if(hrs >= 17){
					msg = 'Good evening';      //After 5pm
				}
				if(hrs >= 22){
					msg = 'Go to bed!';  
				}
				document.getElementById('"+element_id+"').innerHTML = msg;
				return msg}
				getGreeting(hrs);
				</script>".html_safe
    end
end
ActionView::Base.send :include, DayGreeter 
