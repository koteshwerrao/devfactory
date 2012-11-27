Given /^I click "(.*?)"$/ do |arg1|
  click_link(arg1)
end
Then /^I will see the home page$/ do
  visit root_path
end

