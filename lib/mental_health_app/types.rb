# frozen_string_literal: true

require "dry/types"

module MentalHealthApp
  Types = Dry.Types

  module Types
    MEMBER = 'member'
    THERAPIST = 'therapist'

    Role = Types::String.default(MEMBER).enum(MEMBER => 0, THERAPIST => 1).freeze
  end
end
