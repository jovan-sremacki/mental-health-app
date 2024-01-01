# frozen_string_literal: true

module MentalHealthApp
  module Actions
    module Users
      # Action for displaying users
      class Index < MentalHealthApp::Action
        def handle(*, response)
          users = [
            { 'name' => 'Jovan' },
            { 'name' => 'Marko' }
          ]

          response.format = :json
          response.body = users.to_json
        end
      end
    end
  end
end
