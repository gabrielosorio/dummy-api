require 'grape'

module Dummy
  class API < Grape::API
    format :json

    resource :foo do
      desc 'Return a dummy JSON response'
      get :bar do
        {
          id: "someID",
          first_name: "John",
          last_name: "Doe",
          gender: "male",
          email: "john@doe.com",
          timezone: "-3",
          locale: 'en_US',
          image_url: 'http://www.thesquashedtomato.co.za/wp-content/uploads/2012/01/facebook-profile-picture-no-pic-avatar.jpg',
          birthday: Time.now
        }
      end
    end
  end
end
