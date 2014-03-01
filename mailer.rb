require 'rubygems'
require 'action_mailer'


ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address   => "smtp.gmail.com",
   :port      => 587,
   :domain    => "gmail.com",
   :authentication => :plain,
   :user_name      => "poodlesurvey@gmail.com",
   :password       => "foxes2014",
   :enable_starttls_auto => true
  }

ActionMailer::Base.view_paths= File.dirname(__FILE__)

class Mailer < ActionMailer::Base

  def create_email(email, message)
    @message = message
    mail(   :to      => email,
            :from    => "poodlesurvey@gmail.com",
            :subject => "testing mail") do |format|
                format.html
                format.text
    end
  end
end

