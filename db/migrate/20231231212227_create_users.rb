# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :name, String, null: false
      column :password, String
      column :email, String, null: false, unique: true
      column :role, Integer, null: false, default: 0

      check %(role IN(0, 1))
    end
  end
end
