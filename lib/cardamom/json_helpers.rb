require 'cuba'

module Cardamom
  module JsonHelpers
    def json_payload
      body = req.body.read
      body && MultiJson.load(body)
    end

    def parse_json(json)
      MultiJson.load(json, symbolize_keys: true)
    end

    def json(status, data)
      res.status = status
      res.headers["Content-Type"] = "application/json"
      res.write MultiJson.dump(data)
    end
  end
end
