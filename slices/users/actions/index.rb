# frozen_string_literal: true

module Users
  module Actions
    class Index < Users::Action
      def handle(*, response)
        users = rom.relations[:users]
                   .select(:name)
                   .to_a

        response.format = :json
        response.body = users.to_json
      end
    end
  end
end
