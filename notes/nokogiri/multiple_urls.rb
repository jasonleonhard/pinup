#!/usr/bin/env ruby

# Parsing multiple URLs with Nokogiri?

require 'rubygems'
require 'nokogiri'
require 'open-uri'

#/ this prints all 10 of the URLs to pull page hrefs from.

1.upto(10) do |pagenum|
  # Create a local variable named `url`
  url = "http://www.mywebsite.com/page/#{pagenum}"

  # Print it (to screen)
  puts url

  # Print this URL
  doc = Nokogiri::HTML(open(url))
  doc.xpath('//h2/a/@href').each do |node|
    puts node.text
  end
end
