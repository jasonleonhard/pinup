#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

# doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof'))
# doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof?query=rails'))
# doc = Nokogiri::HTML(open('http://siliconflorist.com/jobs/#glider'))
doc = Nokogiri::HTML(open('http://siliconflorist.com/jobs'))

doc.css('td a').each do |link|
	# output job post title and then approriate link
	# puts '<a href="http://siliconflorist.com/jobs/view/' + link['href'] + '">' + link.content + '</a><br>'
	puts link
end
# note this will not work for all listings, just first page...

# JUST RUN THIS
	# ./railsPortlandJob.rb > a.html ; cat a.html | grep -ivE 'Seattle|Sr.|Senior|corvallis|Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ; s c.html ;
# or
	# ./railsPortlandJob.rb > a.html ; cat a.html | grep -iv Seattle | grep -iv Sr. | grep -iv Senior | grep -iv corvallis | grep -iv 'Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ; s c.html ;
	