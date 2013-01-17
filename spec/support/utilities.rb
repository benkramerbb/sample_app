def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  cookies[:remember_token] = user.remember_token
end

def edit_user(user, name, email)
  visit edit_user_path(user)
  fill_in "Name",             with: name
  fill_in "Email",            with: email
  fill_in "Password",         with: user.password
  fill_in "Confirmation", with: user.password
  click_button "Save changes"
end