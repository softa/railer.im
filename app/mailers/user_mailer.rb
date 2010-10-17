class UserMailer < ActionMailer::Base

  default :from => "railer.im <contact@railer.im>"

  def confirm_email user
    user.reset_perishable_token!
    user.reload
    @user = user
    mail :to => user.email, :subject => '[railer.im] Welcome railer'
  end
  def reset_email user
    user.reset_perishable_token!
    user.reload
    @user = user
    mail :to => user.email, :subject => '[railer.im] Password reset'
  end
end