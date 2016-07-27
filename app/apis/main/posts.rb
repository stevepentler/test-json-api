Main.define_resource :posts do
  scope { Post }
  attribute :title, types.String, 'the post title'
  attribute :body, types.String, 'the post body'

  relates_to_one :user

  list
  update
  delete
end
