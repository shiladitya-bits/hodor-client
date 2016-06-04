#!/usr/bin/env ruby
require 'hodor_services'

def main
  stub = Hodor::HodorService::Stub.new('localhost:50055', :this_channel_is_insecure)
  message = 'Hold the door!'
  puts "Me: #{message}"
  response = stub.talk(Hodor::HodorRequest.new(message: message))
  puts "Hodor: #{response.message}"
end

main