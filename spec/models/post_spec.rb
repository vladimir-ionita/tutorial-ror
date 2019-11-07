require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should not allow empty titles" do
    post = Post.new

    expect(post.save).to eq(false)
  end
  it "should not accept titles shorter than 10 characters" do
    post = Post.new
    post.title = "123456789"

    expect(post.save).to eq(false)
  end
  it "should accept titles longer than 10 characters" do
    post = Post.new
    post.title = "1234567890x"

    expect(post.save).to eq(true)
  end
end
