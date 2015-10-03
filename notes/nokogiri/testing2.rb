#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

# doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof'))
doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof?query=rails'))

doc.css('span .pl a').each do |link|
	# output job post title and then approriate link
	puts '<a href="https://portland.craigslist.org' + link['href'] + '">' + link.content + '</a><br>'
	# puts link['href']

end


# create file with timestamp
# run
# open output file in sublime
# view in browser
	# echo '<!--' > links.html ;
	# date >> links.html ;
	# echo '-->' >> links.html ;
	# ./testing2.rb >> links.html
	# s links.html

# grep # narrow down
	# ./testing2.rb > links.html
# link/title  have the words
	# cat links.html | grep -i rails > railsOnly.html
# link/title must NOT have the words 
	# cat links.html | grep -vi seatle | grep -vi Sr. > railsOnly.html
	# s railsOnly.html

# ./testing2.rb > a.html ;
# cat a.html | grep -iv Seattle | grep -iv Sr. | grep -iv Senior | grep -iv corvallis | grep -iv 'Full-Stack Ruby on Rails Developer for Profitable Webstores Website' > b.html ;
# s c.html ;

# cmd-shift-p
# v

