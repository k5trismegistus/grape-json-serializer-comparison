json.id article.id
json.title article.title
json.content article.content
json.is_bookmarked @bookmarked_ids.include?(article.id)