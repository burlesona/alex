require 'hobbit'

module Alex
  class App < Hobbit::Base
    get '/' do
      serve 'client/templates/application.html'
    end

    private
    def serve(path)
      File.read path
    end
  end
end
