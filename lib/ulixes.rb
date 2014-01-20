require "open-uri"
require 'logger'

#by Gilad Manor - a client module for Ulixes rule engine
class Ulixes
  
  def self.register(uid)
    send({:uid=>uid})
  end
  
  def self.set(uid,code,value)
    send({:uid=>uid, :code=>code, :value=>value})
  end
  
  def self.get(uid)
    send({:uid=>uid})
  end
  
  def send(data)
    open("http://#{@@server}?a_id=#{@@account_id}&k=#{@@account_key}&#{data.map{|k,v| "#{k}=#{v}"}.join("&")}")
  end
  
  def self.credentials(server,id, key)
    @@server = server
    @@account_id = id
    @@account_key = key
  end
  
  def self.user_entity(e)
    @@entity = e
  end
  
  def self.uuid_field(f)
    @@uuid_field = f
  end
  
end
