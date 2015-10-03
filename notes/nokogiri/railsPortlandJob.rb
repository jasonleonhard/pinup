#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

# doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof'))
# doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof?query=rails'))
doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof?'))

doc.css('span .pl a').each do |link|
	# output job post title and then approriate link
	puts '<a href="https://portland.craigslist.org' + link['href'] + '">' + link.content + '</a><br>'
	# puts link['href']

end
# note this will not work for all listings, just first page...

# JUST RUN THIS
	# ./railsPortlandJob.rb > a.html ; cat a.html | grep -ivE 'Seattle|Sr.|Senior|corvallis|Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ; s c.html ;
# or
	# ./railsPortlandJob.rb > a.html ; cat a.html | grep -iv Seattle | grep -iv Sr. | grep -iv Senior | grep -iv corvallis | grep -iv 'Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ; s c.html ;
	

# LONG WAY BELOW:
	# create file with timestamp
		# echo '<!--' > a.html ;
		# date >> a.html ;
		# echo '-->' >> a.html ;
	# run
		# ./railsPortlandJob.rb >> a.html
	# link/title must NOT have the words so grep # narrow down
		# ./railsPortlandJob.rb > a.html ;
		# cat a.html | grep -iv Seattle | grep -iv Sr. | grep -iv Senior | grep -iv corvallis | grep -iv 'Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ;
	# link/title have the words
		# cat b.html | grep -i rails 
	# open output file in sublime
		# s c.html ;
	# view in browser
		# cmd-shift-p
		# v