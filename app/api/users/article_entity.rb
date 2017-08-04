module Users
  class ArticleEntity < Grape::Entity
    root 'users', 'user'
    expose :id
    expose :title
    expose :is_bookmarked { |ins, opt| opt[:bookmarked_ids].include?(ins.id) }
  end
end