require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']
#carregar o ambiente de homolog, carregar o arquivo yml com diretorio padrao + arquivo que eu quero
#(__FILE__)É uma referência ao nome do arquivo atual. No arquivo env.rb, __FILE__seria interpretado como "env.rb".
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Helper)
World(Pages)



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10


end