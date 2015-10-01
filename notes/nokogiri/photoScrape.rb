require 'nokogiri'
require 'open-uri'

@output_file = "scraper.out"
@separator = ' || '
@tag_separator = ', '

File.open("#@output_file", mode = "w") do |file|
  some_uri = "http://www.marcinszczepaniak.pl/photos/410"
  document = Nokogiri::HTML(open(some_uri), nil, 'UTF-8')
  # get title
  file << document.at_css('.image_title').content.strip
  file << @separator
  # get tags
  tags = document.at_css('.labels_photo_cloud').css('.label')
  file << tags.map(&:content).join(@tag_separator)
  file << @separator
  # get image path
  path = document.at_css('.image')['src']
  file << path.split('/').last
end
