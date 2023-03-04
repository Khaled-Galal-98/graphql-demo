class Types::UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :inverse_name, String, null: true , description: "Reversed name"

    def inverse_name
        object.name.reverse
    end
end