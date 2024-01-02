# frozen_string_literal: true

module MentalHealthApp
  module Persistence
    module Relations
      class Users < ROM::Relation[:sql]
        schema(:users, infer: true)
      end
    end
  end
end
