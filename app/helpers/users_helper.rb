module UsersHelper
  
  def recommend_button_class
    classes = []
    # if me? or !current_user
    #   classes << 'hide'
    # end
    if @user.recommended_by.include?(current_user)
      classes << 'unrecommend_button'
    else
      classes << 'recommend_button'
    end
    classes.join(' ')
  end
  
  def recommend_button_text
    if @user.recommended_by.include?(current_user)
      'Unrecommend'
    else
      'Recommend'
    end
  end
  
  def followers_on_github_url
    "http://github.com/#{@user.login}/followers"
  end
  
  def repositories_on_github_url
    "http://github.com/#{@user.login}/repositories"
  end
end