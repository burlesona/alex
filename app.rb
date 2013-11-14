require 'hobbit'
require 'json'

module Alex
  class App < Hobbit::Base
    get '/' do
      serve 'client/templates/application.html'
    end

    get '/test' do
      json odds: 'red!', evens: 'blue!'
    end

    private
    def serve(path)
      File.read path
    end

    def json(hash)
      response['Content-Type'] = 'application/json'
      JSON.generate hash
    end
  end
end
