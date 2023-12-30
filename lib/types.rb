# frozen_string_literal: true

module Types
  include Dry.Types()
  
  MEMBER = 'member'
  THERAPIST = 'therapist'

  Role = Types::String.default(MEMBER).enum(MEMBER => 0, THERAPIST => 1).freeze
end
