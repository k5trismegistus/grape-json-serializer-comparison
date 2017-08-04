module Users
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :articles, serializer: ArticleSerializer
    attribute(:type){ 'active_model_serialiser' }
  end
end