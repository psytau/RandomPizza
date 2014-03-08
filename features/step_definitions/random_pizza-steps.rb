require 'rspec/mocks/standalone'
require 'rspec/expectations'

Given /^I have started the app$/ do
  @pizza = RandomPizza.new
end

Then /^I should see "(.*?)"$/ do |arg1|
  @pizza.should_receive(:puts).with(arg1)
end

Then /^I should see a suggestion "(.*?)"$/ do |arg1|
  @pizza.suggestion.should include(arg1)
end
