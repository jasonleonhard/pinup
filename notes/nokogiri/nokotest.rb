#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'


@doc = Nokogiri::HTML::DocumentFragment.parse <<-EOHTML
<body>
  <h1>Three's Company</h1>
  <div>A love triangle.</div>
</body>
EOHTML

h1 = @doc.at_css "h1"
h1.content = "Snap, Crackle & Pop"

@doc.to_html
