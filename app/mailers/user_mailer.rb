class UserMailer < ActionMailer::Base

  default :from => "railer.im <contact@railer.im>"

  def confirm_email user
    mail :to => user.email, :subject => 'Welcome to railer.im'
  end

end
