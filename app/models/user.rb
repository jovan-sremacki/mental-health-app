# frozen_string_literal: true

# User model
class User < Dry::Struct
  attribute :name, Types::String
  attribute :email, Types::String
  attribute :role, Types::Role

  def therapist?
    role == Types::THERAPIST
  end
end
