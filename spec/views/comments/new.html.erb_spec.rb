require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :user_name => "MyString",
      :body => "MyText",
      :idea_id => 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_user_name[name=?]", "comment[user_name]"

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_idea_id[name=?]", "comment[idea_id]"
    end
  end
end
