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

h1  = @doc.at_css "h1"
div = @doc.at_css "div"
h1.parent = div

p @doc.to_html
# => "<body>
#   
#   <div>A love triangle.<h1>Three's Company</h1>
# </div>
# 
# </body>"



# But you could also arrange it next to other nodes:
  div.add_next_sibling(h1)

  @doc.to_html
  # => "<body>
  #   
  #   <div>A love triangle.</div>
  # <h1>Three's Company</h1>
  # 
  # </body>"
