var date =new Date(); 
var hrs = date.getHours();
var msg='';
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
	if(hrs >= 22 || hrs == 0){
		msg = 'Go to bed!';  
	}
	
	return msg
}
