class UserMailer < ActionMailer::Base

  default :from => "railer.im <contact@railer.im>"
  send_with_mailee

  def confirm_email user
    mail :to => user.email, :subject => 'Welcome to railer.im'
  end

end
