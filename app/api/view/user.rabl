object @user
attributes :id, :name
child @user.articles, root: 'articles', object_root: false do
  extends 'article'
  node(:is_bookmarked) { |article| @bookmarked_ids.include?(article.id) }
end
node(:type) { 'rabl' }