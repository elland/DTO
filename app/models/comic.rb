require 'open-uri'
class Comic
  def self.get_last
    doc = Nokogiri::HTML(open('http://www.penguinpetes.com/Doomed_to_Obscurity/rss.xml'))
    url = doc.xpath('//item').first.xpath('guid').to_s
    url.split('=').last.split('.').first
  end
end
