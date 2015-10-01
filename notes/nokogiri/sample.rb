#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
 
html = %Q{
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>A Riddle</title>
  </head>
  <body>
    <p id="question">
      How many web servers does it take to screw in a light bulb?
    </p>
    <p id="answer">
      200, OK?
    </p>
  </body>
</html>
}
 
doc = Nokogiri::HTML(html)
body = doc.at_css("body")
body['style'] = "background-color: blue;"
html = doc.to_html
 
puts html
