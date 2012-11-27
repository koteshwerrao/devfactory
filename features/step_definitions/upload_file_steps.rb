Given /^I go to the root page$/ do
  visit root_path
end
Then /^I press Upload New File$/ do
   page.find(:xpath,"//a[@href='/files/new']").click
end

Then /^I browse image$/ do 
  attach_file('file', '/home/heurion/Desktop/index12.jpeg')
end

Then /^I upload the file$/ do
   page.find(:xpath,"//input[@type='submit']").click
end


