require 'random_data'


50.times do

  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all


100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.create!(
  title: "I MADE THIS TITLE!",
  body: "MY SEXY BODY!"
)

Comment.find_or_create_by!(
  title: "Byaidfmr fevts eoyv tvzx aorlm.",
  body: "Imv ijy oq ltp chao azwgmovn. Oefx ycve jbhgksvu sz..."
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
