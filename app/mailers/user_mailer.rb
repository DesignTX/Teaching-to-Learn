class UserMailer < ApplicationMailer
  layout "mailer"
  
  def interested_in_post_email
    @person_receiving = params[:postuser]
    @person_sending = params[:user]
    @post = params[:post]
    mail(to: @person_receiving.email , subject: 'A new book was added')
  end
end