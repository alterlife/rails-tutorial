require "application_system_test_case"

class MicroblogsTest < ApplicationSystemTestCase
  setup do
    @microblog = microblogs(:one)
  end

  test "visiting the index" do
    visit microblogs_url
    assert_selector "h1", text: "Microblogs"
  end

  test "creating a Microblog" do
    visit microblogs_url
    click_on "New Microblog"

    fill_in "Blog", with: @microblog.blog
    fill_in "User", with: @microblog.user
    click_on "Create Microblog"

    assert_text "Microblog was successfully created"
    click_on "Back"
  end

  test "updating a Microblog" do
    visit microblogs_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @microblog.blog
    fill_in "User", with: @microblog.user
    click_on "Update Microblog"

    assert_text "Microblog was successfully updated"
    click_on "Back"
  end

  test "destroying a Microblog" do
    visit microblogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Microblog was successfully destroyed"
  end
end
