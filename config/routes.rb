# frozen_string_literal: true

module MentalHealthApp
  # Routes class
  class Routes < Hanami::Routes
    root { 'Hello from Hanami' }

    slice :users, at: '/users' do
      get '/show', to: 'index'
    end
  end
end
