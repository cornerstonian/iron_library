require "test_helper"

class SignUpSignInTest < Capybara::Rails::TestCase


  setup do
    user = User.create! username: "cornerstonian", password: "87654321"
    Book.create(title: "Ghost In The Wires", photo_url: 'http://buff.ly/29ao1SS', price: '21' )
  end

test "Signing In" do

  visit root_path
  click_link "Ghost In The Wires"
  fill_in "Username", with: "cornerstonian"
  fill_in "Password", with: "87654321"
  click_button "Sign-in"
  click_link "Ghost In The Wires"
  save_and_open_page
  assert_content page, "Edit This Title"
 end

end
