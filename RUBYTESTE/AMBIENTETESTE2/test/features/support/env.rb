require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'
require 'ostruct'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE'] #constante utilizado no yml
#abaixo, constante que carrega o arquivo yml no env.rb
#recebe o arquivo que foi especificado homolog ou producao

#chamando arquivo YAML e concatenando com o arquivo AMBIENTE
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PageObjects) #torna o módulo no arquivo page_helper global podendo ser utilizado no projeto
World(Helper)
#configurando drivers browser
Capybara.register_driver :selenium do |app|

if BROWSER.eql? ('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome,)
elsif BROWSER.eql? ('chrome_headless')
    Capybara::Selenium::Driver.new(app, :browser => :chrome,
     desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
         'chromeOptions' =>{'args' =>['--headless', 'disable-gpu']}
     )
    )

elsif BROWSER.eql? ('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
elsif BROWSER.eql? ('firefox_headless')
    browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
    Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)



# elsif BROWSER.eql? ('ie')
#     Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
# elsif BROWSER.eql? ('safari')
#     Capybara::Selenium::Driver.new(app, :browser => :safari)
# elsif BROWSER.eql? ('poltergeist')
    # options = { js_errors: false }
    # Capybara::Poltergeist::Driver.new(app, options)
end


end

Capybara.configure do |config|
    config.default_driver = :selenium #selenium(firefox) #selenium_chrome_headless(sem_gpu_navegador)
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end