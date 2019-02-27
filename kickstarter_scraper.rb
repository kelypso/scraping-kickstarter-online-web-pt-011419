# require libraries/modules here
require 'nokogiri'

def create_project_hash
  # this just opens a file and reads it into a variable
  html = File.read('fixtures/kickstarter.html')
  
  # uses Nokogiri's #HTML to parse into nodes
  kickstarter = Nokogiri::HTML(html) 
end