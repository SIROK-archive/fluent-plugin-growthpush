class Fluent::GrowthPushOutput < Fluent::Output
  Fluent::Plugin.register_output('growthpush', self)

  config_param :application_id, :string
  config_param :secret, :string
  
  def initialize
    super
    require "growth_push"
  end


  def emit(tag, es, chain)
    chain.next
    es.each do |time,record|
      call(record)
    end
  end


  def call(record)
    growthpush = GrowthPush.new(@application_id, @secret)
    case record["api"]
    when "client"
      growthpush.create_client(record["token"], record["os"])
    when "event"
      growthpush.create_event(record["client"], record["name"], record["value"]=nil)
    when "tag"
      growthpush.create_tag(record["client"], record["name"], record["value"]=nil)
    end
  end


end
