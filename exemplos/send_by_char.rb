require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_max_wait_time = 30
page = Capybara::Session.new(:chrome)
page.visit("https://erp1.edebe.com.br:8085/?StartProg=SIGAMDI&Comm=TCP&Env=P12_PROD")

elem01 = page.find('#COMP3014 > input').set "reinaldo"
elem02 = page.find(:xpath, "//*[@id='COMP3016']/input")
" help".each_char{|letra|elem02.send_keys letra
sleep 0.5}
sleep 5
