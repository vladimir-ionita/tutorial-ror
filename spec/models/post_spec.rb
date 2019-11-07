require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should not allow empty titles" do
    post = Post.new
    post.title = nil
    post.save

    expect(post.errors.count).to(eq(1))
  end
end
