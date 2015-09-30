#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
# selectorgadget fastest
########################################################################
# note: consider using nokogiri as a form of search on your own sites too! 
# resource: http://www.nokogiri.org/tutorials/parsing_an_html_xml_document.html
########################################################################
# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://stores.ebay.com/EDITION-DELUXE-RARE-BOOKS'))
########################################################################
# Search for nodes by css
# doc.css('nav ul.menu li a').each do |link| # <nav> <ul class="menu"> <li> <a href=""
########################################################################
doc.css('title').each do |link| # <nav> <ul class="menu"> <li> <a href=""
  puts link.content
  puts link
  puts link.text
end
########################################################################
doc.css('.item-title').each do |link|
  puts link.content
  puts link.at_css
  # puts link
  # puts link.text
end
# ########################################################################
# doc.css('.item-title').each do |link|
#   puts link.content
#   puts link
#   puts link.text
# end
# ########################################################################
# doc.css('.js-product-title').each do |link|
#   puts link.content
#   puts link
#   puts link.text
# end
# ########################################################################


########################################################################
########################################################################
########################################################################
########################################################################
########################################################################
