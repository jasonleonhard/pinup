#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://portland.craigslist.org/search/sof'))

doc.css('span .pl a').each do |link|
  puts link.content + ' | ' + 'https://portland.craigslist.org' + link["href"]
end