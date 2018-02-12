print '-- creating_main_user( '
User.create!(
  email: 'mharr171.z@gmail.com',
  password: 'asdf123',
  first_name: 'Matthew',
  last_name: 'Harris'
)
puts ". )\n   -> complete"

print '-- creating_users('
count = 0
5.times do
  count += 1
  User.create!(
    email: "matt" + count.to_s + "@gmail.com",
    password: 'asdf123',
    first_name: "Matthew" + count.to_s,
    last_name: "Harris" + count.to_s
  )
  print ' .'
end
users = User.all
puts " )\n   -> completed #{users.count} users created."

print '-- creating_lists('
users.each do |user|
  list_count = 0
  2.times do
    list_count += 1
    title = "List " + list_count.to_s
    user.lists.create!(
      title: title,
      private: false
    )
    print ' .'
  end
end
lists = List.all
puts " )\n   -> completed #{lists.count} lists created."

print '-- creating_items('
lists.each do |list|
  item_count = 0
  5.times do
    item_count += 1
    title = "Item " + item_count.to_s
    list.items.create!(
      title: title,
      completed: false
    )
    print ' .'
  end
end
items = Item.all
puts " )\n   -> completed #{items.count} items created."
