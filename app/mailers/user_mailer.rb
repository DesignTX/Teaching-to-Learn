# frozen_string_literal: true

class UserMailer < ApplicationMailer
  layout 'mailer'

  # our custom mailer function that does what we want it too we've set the instance variables here which will then be avaliable in the user_mailer html which composes the email
  def interested_in_post_email
    @person_receiving = params[:postuser]
    @person_sending = params[:user]
    @post = params[:post]
    mail(to: @person_receiving.email, subject: 'Teaching 2 Learn!')
  end
end
