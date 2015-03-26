require 'cuba'

module Cardamom
  # Helpers for http response
  module ResponseHelpers
    def bad_request(message)
      res.status = 400
      res.write message
      halt res.finish
    end

    def unauthorized_request(message = nil)
      res.status = 401
      res.write(message || '401 Unauthorized')
      halt res.finish
    end

    def not_found_request(message = nil)
      res.status = 404
      res.write(message || '404 Not found')
      halt res.finish
    end
  end
end
