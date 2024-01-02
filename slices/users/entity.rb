# frozen_string_literal: true

# require 'dry-struct'

module Users
  class Entity < ROM::Struct
    def eql?(other)
      self == other
    end
  end
end
