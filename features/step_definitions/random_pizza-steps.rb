require 'rspec/mocks/standalone'
require 'rspec/expectations'

Given /^I have started the app$/ do
  @pizza = RandomPizza.new
end

Then /^I should see a suggestion "(.*?)"$/ do |arg1|
  @pizza.suggestion.should include(arg1)
end

Given(/^a valid topping, Pineapple\.$/) do
  @topping = 'Pineapple'
end

Then(/^It should tell me this is a valid topping$/) do
  @pizza.send(:valid_topping?, @topping).should be true
end

Given(/^an invalid topping, mice\.$/) do
  @topping = 'mice'
end

Then(/^It should tell me this is not a valid topping$/) do
  @pizza.send(:valid_topping?, @topping).should be false
end
