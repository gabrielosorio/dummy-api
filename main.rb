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
            id: '9fad7bd9-e8d4-4f58-bb84-d7bc5ad03d5a',
            facebook_id: params[:facebook_id],
            first_name: 'John',
            last_name: 'Doe',
            gender: 'male',
            email: 'john@doe.com',
            timezone: '-3',
            picture_url: 'http://www.thesquashedtomato.co.za/wp-content/uploads/2012/01/facebook-profile-picture-no-pic-avatar.jpg',
            birthday: Time.now,
            religion: 'budist',
            method: 'get_user'
          }
        end
      end

      desc 'Create a dummy user'
      params do
        requires :facebook_id, type: String, desc: 'Facebook ID'
        requires :email, type: String, desc: 'User email'
        requires :first_name, type: String, desc: 'Name'
        requires :last_name, type: String, desc: 'Last name'
        requires :gender, type: String, desc: 'Gender'
        requires :birthday, type: String, desc: 'Date of birth'
        requires :timezone, type: String, desc: 'Timezone'
        requires :picture_url, type: String, desc: 'Picture URL'
        requires :religion, type: String, desc: 'Religion'
      end
      post do
        {
          id: '9fad7bd9-e8d4-4f58-bb84-d7bc5ad03d5a',
          facebook_id: params[:facebook_id],
          first_name: params[:first_name],
          last_name: params[:last_name],
          gender: params[:gender],
          email: params[:email],
          timezone: params[:timezone],
          picture_url: params[:picture_url],
          birthday: params[:birthday],
          religion: params[:religion],
          method: 'create_user'
        }
      end

      desc 'Update a dummy user'
      params do
        requires :facebook_id, type: String, desc: 'Facebook ID'
        requires :email, type: String, desc: 'User email'
        requires :first_name, type: String, desc: 'Name'
        requires :last_name, type: String, desc: 'Last name'
        requires :gender, type: String, desc: 'Gender'
        requires :birthday, type: String, desc: 'Date of birth'
        requires :timezone, type: String, desc: 'Timezone'
        requires :picture_url, type: String, desc: 'Picture URL'
        requires :religion, type: String, desc: 'Religion'
      end
      put do
        {
          id: '9fad7bd9-e8d4-4f58-bb84-d7bc5ad03d5a',
          facebook_id: params[:facebook_id],
          first_name: params[:first_name],
          last_name: params[:last_name],
          gender: params[:gender],
          email: params[:email],
          timezone: params[:timezone],
          picture_url: params[:picture_url],
          birthday: params[:birthday],
          religion: params[:religion],
          method: 'update_user'
        }
      end

    end
  end
end
