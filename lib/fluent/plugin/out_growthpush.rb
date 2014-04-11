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
      # case record["api"] 
      # when "client" then 
      #   @growthpush.create_client(record["token"], record["os"])
      # when "event" then 
      #   @growthpush.create_event(record["client"], record["name"], record["value"])
      # when "tag" then 
      #   @growthpush.create_tag(record["client"], record["name"], record["value"])
      # end
      p record["api"]
    end
  end

end
