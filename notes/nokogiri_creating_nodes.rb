#!/usr/bin/env ruby
# http://www.nokogiri.org/tutorials/modifying_an_html_xml_document.html
require 'nokogiri'
require 'open-uri'

# MOVING NODES: 
@doc = Nokogiri::HTML::DocumentFragment.parse <<-EOHTML
<body>
  <h1>Three's Company</h1>
  <div>A love triangle.</div>
</body>
EOHTML

h3 = Nokogiri::HTML::Node.new "h3", @doc
h3.content = "1977 - 1984"
h1.add_next_sibling(h3)

puts@doc.to_html
# => "<body>
#   <h1>Three's Company</h1>
# <h3>1977 - 1984</h3>
#   <div>A love triangle.</div>
# 
# </body>"
