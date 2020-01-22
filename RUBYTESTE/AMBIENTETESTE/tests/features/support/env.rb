require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'ostruct'
#require_relative 'page_helper.rb'


AMBIENTE = ENV['AMBIENTE'] 

#carregando arquivo yaml e concatenando com outro arquivo
#CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") 


Word(Pages)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end