require "pry"
require "awesome_print"
require "growth_push"
require 'net/http'
require "json"

class Fluent::GrowthPushOutput < Fluent::Output
  Fluent::Plugin.register_output('growthpush', self)

end
