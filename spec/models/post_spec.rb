require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should not allow empty titles" do
    post = Post.new

    expect(post.save).to eq(false)
  end
end
