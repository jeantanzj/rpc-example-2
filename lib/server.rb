#!/usr/bin/env ruby
require 'rubygems'
require_relative 'proto/myexample_services_pb'
require_relative 'services/engine_service'
class Server

  class << self
    def start
      start_grpc_server
    end

    private
    def start_grpc_server
      @server = GRPC::RpcServer.new
      @server.add_http2_port("127.0.0.1:9999", :this_port_is_insecure)
      @server.handle(EngineService)
      @server.run_till_terminated
    end
  end
end

Server.start
