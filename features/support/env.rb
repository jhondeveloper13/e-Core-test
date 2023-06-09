require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'configuration/ready_to_register_driver'
require 'allure-cucumber'

Capybara.register_driver :site_prism do |app|
  Configuration::ReadyToRegisterDriver.new(app,
                                           device: ENV['DEVICE'],
                                           graphic_mode: ENV['GRAPHIC_MODE'],
                                           mode: ENV['MODE']).driver
end

Capybara.configure do |config|
  config.default_driver = :site_prism
  config.default_max_wait_time = 20
  config.app_host = ENV['DEVICE'] == 'desktop' ? ENV['HOST'] : ENV['MHOST']
end

Allure.configure do |c|
  c.results_directory = 'allure-results'
  c.clean_results_directory = true
end
