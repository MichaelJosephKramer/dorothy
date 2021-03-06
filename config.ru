require 'bundler'
Bundler.setup

require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  #
  # Add your settings here
  # set [:setting], [value]
  # 
  # set :author,    ENV['USER']                               # blog author
  # set :title,     Dir.pwd.split('/').last                   # site title
  # set :root,      "index"                                   # page to load on /
  # set :date,      lambda {|now| now.strftime("%d/%m/%Y") }  # date format for articles
  # set :markdown,  :smart                                    # use markdown + smart-mode
  # set :disqus,    false                                     # disqus id, or false
  # set :summary,   :max => 150, :delim => /~/                # length of article summary and delimiter
  # set :ext,       'txt'                                     # file extension for articles
  # set :cache,      28800                                    # cache duration, in seconds

  set :analytics, 'UA-592651-4'
  set :author, 'Michael Joseph Kramer'
  set :bio, '<p>Michael Joseph Kramer is a passionate software developer focusing on quality, testing, and agile practices. Recently he has been digging into Node.js and JavaScript, CoffeeScript, and he is still trying not to spill the Ruby Kool-Aid all over his shirt.</p><p>Michael is located in Columbus, OH.</p>'
  set :clicky, '66487006'
  set :disqus, 'michaeljosephkramer'
  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal}, %Y") }
  set :email, 'mjk@michaeljosephkramer.com'

  set :error do |code|
    "<font style='font-size:300%'>You broke my blog. Thanks alot. Here's your excuse code: #{code}.</font>"
  end

  set :ext, 'md'
  set :facebook, 'MichaelJosephKramer'
  set :feedburner, 'MichaelJosephKramer'
  set :linkedin, 'MichaelJosephKramer'
  set :subtitle, 'because two names just isn\'t enough.  .  .'
  set :summary, :max => 25, :delim => /~\n/
  set :title, 'Michael Joseph Kramer'
  set :twitter, 'MichaelKramer'
  set :url, 'http://michaeljosephkramer.com'
end

run toto


