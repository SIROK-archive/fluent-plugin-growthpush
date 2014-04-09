require "pry"
require "awesome_print"
require "growth_push"
require 'net/http'
require "json"

class Fluent::GrowthPushOutput < Fluent::Output
  Fluent::Plugin.register_output('growthpush', self)

  config_param :application_id, :string
  config_param :secret, :string
  
  def initialize 
    super
    @growthpush = GrowthPush.new(@application_id, @secret)
  end

  def config(conf)
  	super
  end


  def emit(tag, es, chain)
    chain.next
    es.each {|time,record|
      $stderr.puts "#{record}"
      # @growthpush.create_event(token, name, value);
      # p GrowthPush.new(@application_id, @secret)
    }
  end

end
