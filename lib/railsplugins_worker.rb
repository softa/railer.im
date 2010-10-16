class RailspluginsWorker
  @queue = :normal

  def self.perform(rubygem_id)

    rubygem = Rubygem.find rubygem_id
    require 'open-uri'
    url = "http://www.railsplugins.org/plugins/search?term=#{rubygem.name}"

    begin
      headers = {'Accept' => 'application/json, text/javascript', 'User-Agent' => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.63 Safari/534.3', 'Referer' => 'http://www.railsplugins.org/home', 'X-Requested-With' => 'XMLHttpRequest'}
      json = JSON.parse open(url, headers).read
      return if json.empty?
      match = json.detect{|i| i['value'] == rubygem.name }
      return unless match
      html = open("http://www.railsplugins.org/plugins/%s" % match['id']).read
      doc = Hpricot(html)

      version = (doc%'.version').inner_text.gsub(/[^\d\.]/,'')
      indicators = Hash[(doc/'p.indicator-pill').map { |indicator|
        result = 'yes' unless (indicator%'.yes').nil?
        result ||= 'dontknow' unless (indicator%'.dontknow').nil?
        result ||= 'no' unless (indicator%'.no').nil?
        [indicator.children.first.to_s, result]
      }]
      rubygem.update_attributes :indicators => indicators, :indicators_version => version, :railsplugins_id => match['id'].to_i
    rescue => e
      return
    end
  end
end