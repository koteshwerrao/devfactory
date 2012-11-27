

Given /^I will upload the username "(.*?)"$/ do |arg1|
  
end



Given /^I will upload the password "(.*?)"$/ do |arg1|
  
end

Given /^I delete "(.*?)"$/ do |arg1|
  page.find(:xpath,"//a[@href='/delete_file?file=#{arg1}']").click
end

