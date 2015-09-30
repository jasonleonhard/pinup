#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
# selectorgadget fastest

# note: consider using nokogiri as a form of search on your own sites too! 
# resource: http://www.nokogiri.org/tutorials/parsing_an_html_xml_document.html

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://www.walmart.com/search/?query=electronics%20sale'))

####
# Search for nodes by css
# doc.css('nav ul.menu li a').each do |link| # <nav> <ul class="menu"> <li> <a href=""

# doc.css('title').each do |link| # <nav> <ul class="menu"> <li> <a href=""
#   puts link.content
# end

# doc.css('.price.price-display').each do |link|
#   puts link.content
# end

# doc.css('.js-product-title').each do |link|
#     puts link.content
# end

doc.css('.price-display , .js-product-title').each do |link|
    puts link.content
end




# ####
# # Search for nodes by xpath
# doc.xpath('//h2 | //h3').each do |link|
#   puts link.content
# end

# ####
# # Or mix and match.
# doc.search('code.sh', '//h2').each do |link| # <code class="sh">
#   puts link.content
# end


# ./nokogiri.rb 
# output follows: 

# Docs
# GitHub
# Installation
# Tutorials
# Getting Help
#  Ubuntu / Debian 
# Troubleshooting Ubuntu / Debian Installation
#  Windows 
# Troubleshooting Windows Installation
# Compiling natively on Windows
#  Red Hat / CentOS 
# Troubleshooting Red Hat / CentOS Installation
#  Mac OS X 
# homebrew 0.9.5+
# Troubleshooting OSX Installation
# “But xcode-select is telling me about a ‘network problem’.”
# Other OS X tips
#  Using Your System Libraries 
#  Using Nonstandard libxml2 / libxslt installations 
#  Other 
# gem install nokogiri
# sudo apt-get install ruby-dev zlib1g-dev
# gem install nokogiri
# ERROR:  Error installing nokogiri:
#         The 'nokogiri' native gem requires installed build tools.

# Please update your PATH to include build tools or download the DevKit
# from 'http://rubyinstaller.org/downloads' and follow the instructions
# at 'http://github.com/oneclick/rubyinstaller/wiki/Development-Kit'
# Extracting libiconv-1.14.tar.gz into tmp/i686-pc-mingw32/ports/libiconv/1.14... OK
# Running 'configure' for libiconv 1.14... ERROR, review
# 'C:/RailsInstaller/.../nokogiri-1.6.5/.../libiconv/1.14/configure.log'
# to see what happened.
# *** extconf.rb failed ***
# Could not create Makefile due to some reason, probably lack of necessary
# libraries and/or headers.  Check the mkmf.log file for more details.  You may
# need configuration options.
# sudo yum install -y rubygem-nokogiri
# gem install nokogiri
# sudo yum install -y gcc ruby-devel zlib-devel
# gem install nokogiri
# gem update --system
# brew unlink gcc-4.2      # you might not need this step
# gem uninstall nokogiri
# xcode-select --install
# gem install nokogiri
# sudo defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL
# gem install nokogiri -- --use-system-libraries
# bundle config build.nokogiri --use-system-libraries
# bundle install
# gem install nokogiri -- \
#     --use-system-libraries \
#     --with-xml2-config=/path/to/xml2-config \
#     --with-xslt-config=/path/to/xslt-config
# gem install nokogiri -- \
#     --use-system-libraries \
#     --with-xml2-dir=/path/to/dir \
#     --with-xslt-dir=/path/to/dir
# gem install nokogiri -- \
#     --use-system-libraries \
#     --with-xml2-lib=/path/to/builds/lib \
#     --with-xml2-include=/path/to/builds/include/libxml2 \
#     --with-xslt-lib=/path/to/builds/lib \
#     --with-xslt-include=/path/to/builds/include
# gem install nokogiri -- \
#     --use-system-libraries \
#     # ...
#     --with-iconv-dir=/path/to/dir \
#     --with-zlib-dir=/path/to/dir \
#     [--with-exslt-dir=/path/to/dir]
#     [--with-exslt-config=/path/to/exslt-config]
#  Ubuntu / Debian 
#  Windows 
#  Red Hat / CentOS 
#  Mac OS X 
#  Using Your System Libraries 
#  Using Nonstandard libxml2 / libxslt installations 
#  Other 
