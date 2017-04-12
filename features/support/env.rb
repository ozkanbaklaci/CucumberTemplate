
#encoding:UTF-8

require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'rest-client'
require 'capybara'
require 'capybara/dsl'
require 'titlecase'





Capybara.run_server = true
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 5
Capybara.ignore_hidden_elements = false
Capybara.exact = true
Capybara.app_host = 'https://www.google.com.tr/'
World(Capybara::DSL)








Capybara.register_driver :selenium do |app|
  #Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  Capybara::Selenium::Driver.new(app, :browser => :chrome)

  #Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

