require 'capybara/dsl'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://test02.sc.pn'

class JvBrowser
  include Capybara::DSL
end

$browser = JvBrowser.new
