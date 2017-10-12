class StatusMailer < ApplicationMailer
	default from: 'notifications@xtremefarmbot.com'
	 
	  def status_email(action)
	  	@action = action
	    mail(to: 'fages.fages@gmail.com', subject: 'Farm Status Report')
	  end
end
