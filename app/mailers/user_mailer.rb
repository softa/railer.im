class UserMailer < ActionMailer::Base

  default :from => "railer.im <contact@railer.im>"

  send_with_mailee

  def confirm_email user
    @user = user
    mail :to => user.email, :subject => '[railer.im] Welcome railer'
  end
  def reset_email user
    @user = user
    mail :to => user.email, :subject => '[railer.im] Password reset'
  end
end