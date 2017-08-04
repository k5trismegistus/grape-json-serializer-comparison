100.times do |i|
  user = User.create!(name: "user#{i}")

  10.times do |j|
    Article.create!(
      title: "article#{j}",
      content: "this article is written by #{user.name}. Enjoy!",
      user_id: user.id
    )
  end
end

User.all.each do |user|
  article_ids = (1..1000).to_a.sample(300)
  article_ids.each do |article_id|
    Bookmark.create!(
      user_id: user.id,
      article_id: article_id
    )
  end
end