require_relative "../lib/hello_services_pb"

def run_say_hello(stub)
  message = ARGV.first || "Euruko"
  puts "Sending #{message} to localhost:50051"
  response = stub.say_hello(Hello::HelloRequest.new(greeting: message))
  puts response.reply
end

stub = Hello::HelloService::Stub.new('localhost:50051', :this_channel_is_insecure)
run_say_hello(stub)

