# frozen_string_literal: true

require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'

Capybara.configure do |conf|
  conf.default_driver = :selenium_chrome
  conf.default_max_wait_time = 2469
end

DATA = YAML.load_file("#{File.dirname(__FILE__)}/massa/massa.yml")
