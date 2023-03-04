# frozen_string_literal: true

module Types
  class UserInputType < Types::BaseInputObject
    argument :id, ID, required: false
    argument :name, String, required: false
    argument :email, String, required: false
  end
end
