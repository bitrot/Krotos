When /^I visit the homepage$/ do
  visit '/'
end

Then /^I should see an Ember\.js app$/ do
  page.evaluate_script('typeof Ember !== "undefined"').should be_true
end
