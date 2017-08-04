module Users
  class UserEntity < Grape::Entity
    expose :id
    expose :name
    expose :articles, using: ArticleEntity
  end
end