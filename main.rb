require 'grape'

module Dummy
  class API < Grape::API
    format :json
    prefix 'api'

    resource :users do
      desc 'Return a dummy user'
      params do
        requires :facebook_id, type: String, desc: 'Facebook ID'
      end
      route_param :facebook_id do
        get do
          {
            id: 'someID',
            facebook_id: params[:facebook_id],
            first_name: 'John',
            last_name: 'Doe',
            gender: 'male',
            email: 'john@doe.com',
            timezone: '-3',
            image_url: 'http://www.thesquashedtomato.co.za/wp-content/uploads/2012/01/facebook-profile-picture-no-pic-avatar.jpg',
            birthday: Time.now,
            religion: 'budist'
          }
        end
      end
    end
  end
end
