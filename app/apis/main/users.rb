Main.define_resource :users do
  scope { User }
  attribute :email, types.String, 'the user\'s email'
  attribute :password, types.String, 'the user\'s password', read: false
  attribute :first_name, types.String, 'the user\'s first name'
  attribute :last_name, types.String, 'the user\'s last name'

  relates_to_many :posts do
    create
  end

  list
  create
  update
  delete
end
