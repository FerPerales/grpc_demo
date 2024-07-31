# frozen_string_literal: true

require_relative '../lib/hello_services_pb'

# Purpose: Service to handle hello actions
class HelloService < Hello::HelloService::Service
  def say_hello(hello_request, _call)
    puts "Receiving request: greeting: #{hello_request.greeting}"
    Hello::HelloResponse.new(reply: "Hello, #{hello_request.greeting}!")
  end
end
