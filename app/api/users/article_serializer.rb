module Users
  class ArticleSerializer < ActiveModel::Serializer
    attributes :id, :title, :content
    attribute(:is_bookmarked) { instance_options[:bookmarked_ids].include?(object.id) }
  end
end