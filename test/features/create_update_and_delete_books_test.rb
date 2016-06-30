require "test_helper"

class CreateUpdateAndDeleteBooksTest < Capybara::Rails::TestCase

  setup do
    Author.create first_name: "George", last_name: "Foreman", bio: "Contrary to popular belief, Lorem Ipsum is not simply random text."
    Author.create first_name: "Mike ", last_name: "Tyson", bio: "Established fact that a reader will be distracted by the readable content of a page when looking at its layout."
    Author.create first_name: "Jane", last_name: "Fonda", bio: "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, making it look like readable English."
    Author.create first_name: "Miles", last_name: "Munroe", bio: "There are many variations of passages of Lorem Ipsum available"
    Book.create(title: "Ghost In The Wires", photo_url: 'http://buff.ly/29ao1SS', price: '21' )

  end

  test "Can view author detail" do
    visit root_path
    click_link "Authors"
    click_link "George Foreman"
    assert_content page, "George Foreman"
  end

  test "can view book detail" do
      visit root_path
      click_link "Books"
      click_link "Ghost In The Wires"
      assert_content page, "21"
  end

end
