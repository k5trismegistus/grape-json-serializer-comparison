json.user do
  json.id @user.id
  json.name @user.name
  json.articles do
    json.array! @user.articles, partial: 'article', as: :article, locals: { bookmarked_ids: @bookmarked_ids }
  end
  json.type 'jbuilder'
end