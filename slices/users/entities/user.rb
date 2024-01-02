# frozen_string_literal: true

module Users
  module Entities
    class User < Users::Entity
      attribute :name, MentalHealthApp::Types::String
      attribute :password, MentalHealthApp::Types::String
      attribute :email, MentalHealthApp::Types::String
      attribute :role, MentalHealthApp::Types::Role
    end
  end
end
