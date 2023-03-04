module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :user, Types::UserType, null: true, description: "Gets User By ID" do
      argument :id, ID, required: true
    end
  
    def user(id:)
      User.find_by(id: id)
    end

    field :users, [Types::UserType], null: true,  description: "Get all users"
    def users()
      User.all()
    end
  end
end
