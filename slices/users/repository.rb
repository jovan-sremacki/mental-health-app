# frozen_string_literal: true

require 'rom-repository'

module Users
  class Repository < ROM::Repository[:users]
    commands :create, update: :by_pk, delete: :by_pk

    struct_namespace Users::Entities
    auto_struct true
  end
end
