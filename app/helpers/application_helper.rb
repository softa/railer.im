module ApplicationHelper

  def gravatar(gravatar_id, size = 48)
    image_tag("http://gravatar.com/avatar/" + gravatar_id + "?s=#{size}", :class => 'image')
  end
  
  def nice_link url
    link_to url.gsub(/http\:\/\/(www.)?/,'').gsub(/\/$/,''), url, :target => :_blank
  end

  def thumbalizr url, width = 250 
    image_tag "http://api.thumbalizr.com/?url=%s&width=%s&api_key=%s&quality=%s" % [url, width, '33b0bc3987ab2e24180562fbbcfde491', '100'], :class => 'image'
  end

  def tweet_this text
    link_to image_tag('social/twitter_16.png'), "http://twitter.com/?status=#{URI.escape(text)}", :target => :_blank
  end

end