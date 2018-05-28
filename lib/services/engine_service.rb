require 'grpc'
require_relative '../proto/myexample_services_pb'

class EngineService < Myexample::Engine::Service

  def get_response(req, _notused)
    v = "Server received #{req.a} and #{req.b}"
    puts v
    Myexample::Response.new(value: v)
  end
end
