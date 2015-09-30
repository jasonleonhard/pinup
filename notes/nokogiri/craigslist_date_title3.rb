#!/usr/bin/env ruby

# Parsing multiple URLs with Nokogiri?

require 'rubygems'
require 'nokogiri'
require 'open-uri'

#/ this prints all 10 of the titles to pull page hrefs from.
1.upto(100) do |pagenum|
  # Create a local variable named `url`
  url = "https://portland.craigslist.org/search/sof?s=#{pagenum}"
  
  # Print it (to screen)
  puts url

  # Print this URL
  doc = Nokogiri::HTML(open(url))
  doc.css('.row').each do |node|
    puts node.text
  end
end
