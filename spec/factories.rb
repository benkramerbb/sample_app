FactoryGirl.define  do
  factory :user do
    name      "Ben Kramer"
    email     "ben@example.org"
    password  "foobar" 
    password_confirmation "foobar"
  end
end