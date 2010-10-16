module ApplicationHelper

  def gravatar(gravatar_id, size = 48)
    image_tag("http://gravatar.com/avatar/" + gravatar_id + "?s=#{size}")
  end

end
