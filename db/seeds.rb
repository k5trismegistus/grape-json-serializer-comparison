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

