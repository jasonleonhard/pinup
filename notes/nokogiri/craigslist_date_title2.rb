#!/usr/bin/env ruby

# Parsing multiple URLs with Nokogiri?

require 'rubygems'
require 'nokogiri'
require 'open-uri'

#/ this prints all 10 of the URLs to pull page hrefs from.

1.upto(184) do |pagenum|
  # Create a local variable named `url`
  # url = "http://www.mywebsite.com/page/#{pagenum}"
  url = "https://portland.craigslist.org/search/sof?s=#{pagenum}"
  # http://stores.ebay.com/EDITION-DELUXE-RARE-BOOKS
  # http://editiondeluxerarebooks.com/
  # https://portland.craigslist.org/search/sof

  # Print it (to screen)
  puts url

  # Print this URL
  doc = Nokogiri::HTML(open(url))
  doc.css('.row').each do |node|
  # doc.css('time , .hdrlnk').each do |node|
    puts node.text
  end
end
