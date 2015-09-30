#!/usr/bin/env ruby
# http://www.nokogiri.org/tutorials/modifying_an_html_xml_document.html
require 'nokogiri'
require 'open-uri'

# CHANGING TEXT CONTENT: assuming we have the following HTML document:
@doc = Nokogiri::HTML::DocumentFragment.parse <<-EOHTML
<body>
  <h1>Three's Company</h1>
  <div>A love triangle.</div>
</body>
EOHTML

h1 = @doc.at_css "h1"
h1.content = "Snap, Crackle & Pop"

# @doc.to_html
  p @doc.to_html  
  # puts @doc.to_html  
  
  # You’ll notice that, when you use #content=, entities are properly escaped. Pow!
  "<body>\n  <h1>Snap, Crackle &amp; Pop</h1>\n  <div>A love triangle.</div>\n\n</body>"
