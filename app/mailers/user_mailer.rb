class UserMailer < ApplicationMailer
  layout "mailer"

  def interested_in_post_email
    @user = params[:user]
    mail(to: @user.email, subject: 'A new book was added',)
  end
end

