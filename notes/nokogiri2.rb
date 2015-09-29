#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

# note: consider using nokogiri as a form of search on your own sites too! 
# resource: http://www.nokogiri.org/tutorials/parsing_an_html_xml_document.html

class Query
  # Fetch and parse HTML document
  @doc = Nokogiri::HTML(open('https://www.etsy.com/'))

  # user input version
  # doc = Nokogiri::HTML(open(url))

  def title
  # Search for nodes by css 
  # (grab title)
    doc.css('title').each do |link| # <nav> <ul class="menu"> <li> <a href=""
      puts link.content
    end
  end

  # (grab head)
  def head
    doc.css('head').each do |link| # <nav> <ul class="menu"> <li> <a href=""
      # everything in head
        puts link 
      # all content in head, but no tags
        puts link.content
    end
  end

end

  # doc.head
  query = Query.new()
  @doc.title
  # p query.head
  # query.title

  # # (grab head)
  #   doc.css('head').each do |link| # <nav> <ul class="menu"> <li> <a href=""
  #     puts link
  #     puts link.content
  #   end
