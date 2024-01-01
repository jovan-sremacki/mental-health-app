# frozen_string_literal: true

module MentalHealthApp
  # Routes class
  class Routes < Hanami::Routes
    root { 'Hello from Hanami' }
    get '/users', to: 'users.index'
  end
end
