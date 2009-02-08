Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.sequence :username do |n|
  "user#{n}"
end

Factory.define :user do |user|
  user.email                 { Factory.next :email }
  user.username              { Factory.next :username }
  user.password              { "password" }
  user.password_confirmation { "password" }
end

Factory.define :email_confirmed_user, :class => 'user' do |user|
  user.email                 { Factory.next :email }
  user.username              { Factory.next :username }
  user.password              { "password" }
  user.password_confirmation { "password" }
  user.email_confirmed       { true }
end
