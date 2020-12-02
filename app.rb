require 'faraday'

module LambdaFunction
  class Handler
    def self.process(event:, context:)
      response = Faraday.get 'https://www.khasegawa.net'
      puts response.body
    end
  end
end
