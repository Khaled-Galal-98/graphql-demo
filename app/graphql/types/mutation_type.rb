module Types
  class MutationType < Types::BaseObject
    field :user_update, mutation: Mutations::UserUpdate
    field :create_user, Types::UserType, null: true do
      argument :name, String, required: true
      argument :email, String, required: true
    end

  
    def create_user(name:, email:)
      User.create(name: name, email: email)
    end
  end
end
