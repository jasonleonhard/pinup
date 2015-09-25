source 'https://rubygems.org'
  # All groups
    # https://github.com/rails/rails
    # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
    gem 'rails', '4.2.3'

    # https://github.com/twbs/bootstrap-sass; 
    # bundle install 
      # application.css.scss (ordered)
        # @import "bootstrap-sprockets"; @import "bootstrap";
      # application.js (ordered)
        # //= require jquery, //= require jquery_ujs, //= require bootstrap-sprockets
    gem 'bootstrap-sass'
    # also required
    # https://github.com/rails/sass-rails
    # Use SCSS for stylesheets
    gem 'sass-rails', '~> 5.0'

    # https://github.com/haml/haml
    # HTML Abstraction Markup Language - A Markup Haiku http://haml.info
    # After you write some Haml, you can run
      # haml document.haml
    # to compile it to HTML. For more information on these commands, check out
      # haml --help
    # %tagname#id.class
    # %tagname{:attr1 => 'value1', :attr2 => 'value2'} Contents # same as 
    # %tagname(attr1='value1' attr2='value2') Contents
    # = link_to   <%=...
    # -if         <%...
    # %h1= ....
    gem 'haml', '4.0.5'

    # https://github.com/plataformatec/simple_form
    # Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup. http://blog.plataformatec.com.br/tag/simple_form
    # rails generate simple_form:install --bootstrap
    # <%= simple_form_for @user do |f| %>
    #   <%= f.input :username %>
    #   <%= f.input :password %>
    #   <%= f.button :submit %>
    # <% end %>
    gem 'simple_form'

    # https://github.com/plataformatec/devise, version recommend by rubygems.org
    # Flexible authentication solution for Rails with Warden. http://blog.plataformatec.com.br/tag/devise/
    # 10 modules: 
      # Database Authenticatable: encrypts and stores a password in the database to validate the authenticity of a user while signing in. The authentication can be done both through POST requests or HTTP Basic Authentication.
      # Omniauthable: adds OmniAuth (https://github.com/intridea/omniauth) support.
      # Confirmable: sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in.
      # Recoverable: resets the user password and sends reset instructions.
      # Registerable: handles signing up users through a registration process, also allowing them to edit and destroy their account.
      # Rememberable: manages generating and clearing a token for remembering the user from a saved cookie.
      # Trackable: tracks sign in count, timestamps and IP address.
      # Timeoutable: expires sessions that have not been active in a specified period of time.
      # Validatable: provides validations of email and password. It's optional and can be customized, so you're able to define your own validations.
      # LockableLockable: locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period.
    # rails generate devise:install
    # rails generate devise MODEL
      # rails generate devise User
    gem 'devise', '~> 3.5.2'

    # https://github.com/thoughtbot/paperclip
    # user uploading images now possible, Easy file attachment management for ActiveRecord https://thoughtbot.com/open-source
    gem 'paperclip', '~> 4.3.1'

    # https://github.com/kristianmandrup/masonry-rails
    # http://masonry.desandro.com/
    # JQuery Masonry ready for use with Rails asset pipeline
    # You can include stylesheets extracted from the masonry examples directly:
    # Manifest application.css file:
      # //= require masonry/jquery.masonry
    # application.js
      # //= require masonry/jquery.masonry
    # or min
      # //= require masonry/masonry.min
    # pins.js.coffee
    gem 'masonry-rails', '~> 0.2.4'

    # https://github.com/ryanto/acts_as_votable
    # vote on posts, have a heart 
    # rails generate acts_as_votable:migration
    # rake db:migrate
    # pins.rb ->     acts_as_votable
    # routes.rb ->    
      # devise_for :users
      # resources :pins do
      #   member do
      #     put "like", to: "pins#upvote"
      #   end
      # end
    # pins_controller.rb 
    gem 'acts_as_votable', '~> 0.10.0'

    # https://github.com/mislav/will_paginate
    # Pagination.        previous 1 2 3 4 next
    # gem 'will_paginate', '~> 3.0.6'
    # gem 'will_paginate', '~> 3.0.7'
    gem 'will_paginate-bootstrap', '~> 1.0.1'

    # https://github.com/MrPowers/frontend-generators
    # Rake tasks to add Bootstrap, Font Awesome, and Start Bootstrap Landing Pages to a Rails app
    # Update your Rakefile with this code:
        # require "frontend_generators"
        # load 'tasks/add_assets.rake'
    # bundle exec rake add_assets:bootstrap
        # create    /vendor/assets/javascripts/bootstrap.js
        # create    /vendor/assets/stylesheets/bootstrap.css
        # ......
    # bundle exec rake add_assets:stylish_portfolio
        # create    /app/assets/images/stylish_portfolio/...
        # create    /app/assets/javascripts/stylish_portfolio/...
        # create    /app/assets/stylesheets/stylish_portfolio/...
        # create    /app/controllers/stylish_portfolios_controller.rb
        # create    /app/views/layouts/stylish_portfolio.html.erb
        # create    /app/views/stylish_portfolios/...
        # create    /app/views/stylish_portfolios/index.html.erb # this one
    # bundle exec rake add_assets:font_awesome
        # get 'creatives/index'
    # bundle exec rake add_assets:creative
        # create    /app/views/creatives/index.html.erb # this one
        # ......
    gem 'frontend-generators', '~> 0.0.1'
        # effectivly already included
        # https://github.com/FortAwesome/font-awesome-sass
        # gem 'font-awesome-sass', '~> 4.4.0'
        # or
        # https://github.com/bokmann/font-awesome-rails
        # gem "font-awesome-rails"



    # gem 'sunspot_rails', '~> 2.2.0'
    # gem 'sunspot_rails'
    # gem 'sunspot_solr' # optional pre-packaged Solr distribution for use in development

    # https://github.com/sferik/twitter        
    # A Ruby interface to the Twitter API.
    # gem 'twitter', '~> 5.15.0'

    # https://github.com/arsduo/koala
    # A lightweight, flexible library for Facebook with support for OAuth authentication, the Graph and REST APIs, realtime updates, and test users. http://developers.facebook.com/
    # gem "koala", "~> 2.2"

    # https://github.com/nov/fb_graph2
    # not https://github.com/nov/fb_graph
    # gem 'fb_graph2'

    # An object-oriented Ruby wrapper for the YouTube GData API http://groups.google.com/group/ruby-youtube-library
    # Upload, delete, update, comment on youtube videos all from one gem.
    # gem 'youtube_it', '~> 2.4.2'

    # https://github.com/hexgnu/linkedin
    # Ruby wrapper for the LinkedIn API http://rdoc.info/gems/linkedin
    # gem 'linkedin', '~> 1.0.0'

    # Ruby toolkit for the GitHub API.
    # gem 'octokit', '~> 4.1.1'

    # https://stripe.com/docs/checkout/guides/rails
    gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

    # https://github.com/laserlemon/figaro
    # easy to securely configure Rails applications.
    # Configuration values often include sensitive information. Figaro strives to be secure by default 
    # by encouraging a convention that keeps configuration out of Git. 
    # bundle install, bundle exec figaro install
    # This creates a commented config/application.yml file and adds it to your .gitignore. Add your own configuration to this file and you're done!
    gem 'figaro'

    # https://github.com/lautis/uglifier
    # Use Uglifier as compressor for JavaScript assets
    gem 'uglifier', '>= 1.3.0'

    # https://github.com/spastorino/coffee-rails
    # Use CoffeeScript for .coffee assets and views
    gem 'coffee-rails', '~> 4.1.0'

    # See https://github.com/rails/execjs
    # readme for more supported runtimes
    # gem 'therubyracer', platforms: :ruby

    # https://github.com/rails/jquery-rails
    # Use jquery as the JavaScript library
    gem 'jquery-rails'

    # https://github.com/rails/turbolinks
    # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
    gem 'turbolinks'

    # https://github.com/rails/jbuilder
    # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
    gem 'jbuilder', '~> 2.0'

    # https://github.com/voloko/sdoc
    # bundle exec rake doc:rails generates the API under doc/api.
    gem 'sdoc', '~> 0.4.0', group: :doc

    # https://github.com/codahale/bcrypt-ruby
    # Use ActiveModel has_secure_password
    # gem 'bcrypt', '~> 3.1.7'
  # end all groups

  group :development, :test do
    # https://github.com/charliesome/better_errors
    gem "better_errors"

    # https://github.com/thoughtbot/capybara-webkit
    # A Capybara driver for headless WebKit (safari and chrome) to test JavaScript web apps https://thoughtbot.com/open-source
    # https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
    # https://www.qt.io/ Qt (/ˈkjuːt/ "cute", or unofficially as Q-T cue-tee) is a cross-platform application framework that is widely used for developing application software that can be run on various software and hardware platforms with little or no change in the underlying codebase, while having the power and speed of native applications.
    # qmake -v
    # which qmake
        # rm `which qmake`
        # qmake is /usr/local/bin/qmake
    # xcode-select --install
    # gem install capybara-webkit -v '1.7.1'
    # gem install capybara-webkit -v '0.11.0'
    # OS X 10.10 (home)
      # brew remove qt
      # brew update
      # brew install qt5
      # brew link --force qt5
      # which qmake
      # bi
    # OS X 10.9 (work)
      # brew remove qt5
      # brew update
      # brew install qt
      # brew link --force qt
      # brew unlink qt && brew link qt
      # which qmake
      # bi
    # rs
    # rspec spec/features/home_spec.rb
    gem 'capybara-webkit'
    
    # https://github.com/thoughtbot/factory_girl_rails
    # https://github.com/thoughtbot/factory_girl
    gem 'factory_girl_rails'

    # https://github.com/ffaker/ffaker
    # Faker refactored. 
    gem 'ffaker'

    # https://github.com/stympy/faker
    # A library for generating fake data such as names, addresses, and phone numbers.
    # gem 'faker'

    # https://github.com/DatabaseCleaner/database_cleaner
    # Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing. http://rubygems.org/gems/database_cleaner
    # clean db from transactional specs and required for capybara-webkit runs your rails app seperately from rspec
    gem 'database_cleaner'

    # https://github.com/ryanb/letter_opener
    # Preview mail in the browser instead of sending.
    gem 'letter_opener'

    # https://github.com/rspec/rspec-rails
    # https://github.com/eliotsykes/rspec-rails-examples
    # rspec-rails is a testing framework for Rails 3.x and 4.x. http://relishapp.com/rspec/rspec-rails
    # rails generate rspec:install
    # spec/rails_helper.rb
    # example 
      # rspec in spec/features/root_spec.rb
    gem 'rspec-rails'

    # https://github.com/pry/pry
    # An IRB alternative and runtime developer console
    # binding.pry
    # shell-mode
    # cd Pry
      #  ls -M --grep re
      # show-method rep -l
    # show-method Array#select
    # ri Array#each
    # gist -m Symbol#to_proc
    gem 'pry'

    # https://github.com/nixme/pry-nav
    # Binding navigation commands for Pry to make a simple debugger
    # Teaches Pry about step, next, and continue to create a simple debugger.
    # binding.pry
    # Pry.commands.alias_command 'c', 'continue'
    # Pry.commands.alias_command 's', 'step'
    # Pry.commands.alias_command 'n', 'next'
    gem 'pry-nav'

    # https://github.com/rweng/pry-rails
    # Use Pry as your Rails Console (replacing it), Rails 3 pry initializer, Avoid repeating yourself, 
    # use pry-rails instead of copying the initializer to every rails project. This is a small gem 
    # which causes rails console to open pry. It therefore depends on pry.
    gem 'pry-rails', '~> 0.3.2'

    # https://github.com/robb1e/simple_bdd
    # BDD for Ruby but simpler. Simple BDD offers basic Behaviour Driven Development language syntax. 
    # It enables tests to take steps to become more declarative than imperative by hiding the implementation and revealing test intent. 
    # It can be used in any test framework as it's just a way to keep the collaborative business language within a test by calling methods 
    # which directly relate to the step in the test.
    gem 'simple_bdd'

    # https://github.com/thoughtbot/shoulda-matchers
    # Collection of testing matchers extracted from Shoulda http://matchers.shoulda.io
    # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners that test common Rails functionality. 
    # These tests would otherwise be much longer, more complex, and error-prone.
    gem 'shoulda-matchers'

    # https://github.com/deivid-rodriguez/pry-byebug
    # Pry navigation commands via byebug
    # binding.pry
    # some_method          # Execution will stop here.
    # puts 'Goodbye World' # Run 'next' in the console to move here.
    gem 'pry-byebug'

    # https://github.com/deivid-rodriguez/byebug
    # Debugging in Ruby 2  It uses the new TracePoint API for execution control and the new Debug Inspector API for call stack navigation, so it doesn't depend on internal core sources. It's developed as a C extension, so it's fast. And it has a full test suite so it's reliable.
    # It allows you to see what is going on inside a Ruby program while it executes and offers many of the traditional debugging features such as:
        # Stepping: Running your program one line at a time.
        # Breaking: Pausing the program at some event or specified instruction, to examine the current state.
        # Evaluating: Basic REPL functionality, although pry does a better job at that.
        # Tracking: Keeping track of the different values of your variables or the different lines executed by your program.
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    # gem 'byebug'

    # https://github.com/rails/web-console
    # Rails Console on the Browser.
    # Access an IRB console on exception pages or by using <%= console %> in views
    gem 'web-console', '~> 2.0'

    # https://github.com/rails/spring
    # Rails application preloader. Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring'

    # https://github.com/voormedia/rails-erd
    # Generate Entity-Relationship Diagrams for Rails applications http://voormedia.github.io/rails-erd/
    # UML diagraming
    # https://github.com/voormedia/rails-erd -> .pdf
    # brew install graphviz
    # bundle exec erd
    # rake erd
    # cmd-p erd.pdf
    gem "rails-erd"

    # https://github.com/preston/railroady
    # Ruby on Rails 3/4 model and controller UML class diagram generator. Originally based on the "railroad" plugin and contributions of many others. 
    # (`brew/port/apt-get install graphviz` before use!)
    # https://github.com/preston/railroady   -> xml .svg
    # brew install graphviz
    # …and then run the master rake task…
    # rake diagram:all
    # Generate diagram for models and controllers including those in the engines.
    # rake diagram:all_with_engines
    # cmd-p .svg
    # open one
    # in /docs/ creates *.svgs
    # cmd-shift-p View...
    # can also affect xml .svgs simliar to html
    # css, js....
    gem 'railroady'
  end

  group :development do
    # https://github.com/sparklemotion/sqlite3-ruby
    # Ruby bindings for the SQLite3 embedded database https://github.com/sparklemotion/sqlite3-ruby/
    # Use sqlite3 as the database for Active Record in development * http://groups.google.com/group/sqlite3-ruby
    gem 'sqlite3'
  end

  group :production do
  # heroku
    # https://github.com/heroku/rails_12factor
    # Makes running your Rails app easier. Based on the ideas behind 12factor.net
    gem 'rails_12factor'

    # https://github.com/ged/ruby-pg
    # https://bitbucket.org/ged/ruby-pg
    # Pg is the Ruby interface to the PostgreSQL RDBMS.
    # Use pg as the database for Active Record in production
    gem 'pg'

    # https://github.com/defunkt/unicorn
    # http://unicorn.bogomips.org/
    # Use Unicorn as the app server 
    gem 'unicorn'

    # https://github.com/capistrano/rails/
    # Specific tasks official Ruby on Rails http://www.capistranorb.com/
    # Use Capistrano for deployment
    # gem 'capistrano-rails', group: :development
  end

# NOTES:
    # FYI the server reads the Gemfile.lock not Gemfile
    # https://www.ruby-toolbox.com/categories/rails_search
    # https://www.ruby-toolbox.com/categories/by_name
    # https://www.ruby-toolbox.com/categories/API_Builders
    # https://www.ruby-toolbox.com/categories/api_clients