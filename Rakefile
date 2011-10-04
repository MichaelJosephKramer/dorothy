require 'toto'

task :default => :new

desc "Create a new article."
task :new do
  title = ask('Title: ')
  raw_date = ask('Date: ')
  description = ask('Description: ')

  slug = title.empty?? nil : title.strip.slugize
  date = raw_date.empty?? Time.now : Date.parse(raw_date)

  article = {'title' => title, 'author' => 'Michael Joseph Kramer', 'date' => date.strftime("%Y/%m/%d"), 'description' => description}.to_yaml 
  article << "\n"
  article << "Once upon a time...\n\n"

  path = "#{Toto::Paths[:articles]}/#{date.strftime("%Y-%m-%d")}#{'-' + slug if slug}.md"

  unless File.exist? path
    File.open(path, "w") do |file|
      file.write article
    end
    toto "an article was created for you at #{path}."
  else
    toto "I can't create the article, #{path} already exists."
  end
end

desc "Publish my blog."
task :publish do
  toto "publishing your article(s)..."
  `git push heroku master`
  toto "pushing to github..."
  `git push origin master`
end

def toto msg
  puts "\n  toto ~ #{msg}\n\n"
end

def ask message
  print message
  STDIN.gets.chomp
end

