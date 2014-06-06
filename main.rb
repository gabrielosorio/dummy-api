require 'grape'

module Dummy
  class API < Grape::API
    format :json

    resource :foo do
      desc 'Return a dummy JSON response'
      get :bar do
        { foo: 'bar' }
      end
    end
  end
end
