# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # this just opens a file and reads it into a variable
  html = File.read('fixtures/kickstarter.html')
  
  # uses Nokogiri's #HTML to parse into nodes
  kickstarter = Nokogiri::HTML(html) 
  
  binding.pry
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text