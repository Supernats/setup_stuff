if Kernel.const_defined?(:Rails) && Rails.env
  require File.join(Rails.root,"config","environment")
  require 'rails/console/app'
  require 'rails/console/helpers'

  extend Rails::ConsoleMethods
  require 'factory_girl'
  FactoryGirl.find_definitions
  include FactoryGirl::Syntax::Methods
end
