require "growth_push"
require "json"
require "pry"
require "awesome_print"

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
    es.each do |time,record|
      @growthpush.create_event(record["client"], record["name"], record["value"]);
    end
  end

end
