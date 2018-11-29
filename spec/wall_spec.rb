require 'rails_helper'

describe 'Wall' do

  let(:wall) {Wall.new(1)}

  it 'has an empty array of posts at initialize' do
    expect(wall.posts).to eq []
  end

  it 'lists newest post first' do
    user = create(:user)
    post1 = create(:post)
    post2 = create(:post)
    wall.add_posts
    expect(wall.posts.first).to eq post2
  end

  describe 'User Walls' do

  let(:wall) {Wall.new(1)}

    it 'has a wall id' do
      expect(wall.id).to eq(1)
    end

    it 'loads a post made on the wall' do
      user = create(:user)
      post = create(:post)
      wall.add_posts
      expect(wall.posts).to eq [post]
    end

    it 'loads posts made on a wall' do
      user = create(:user)
      post1 = create(:post)
      post2 = create(:post)
      wall.add_posts
      expect(wall.posts.length).to eq 2
    end
  end

  describe 'Timeline' do

  let(:timeline) {Wall.new(nil)}

    it "has an empty wall id" do
      expect(timeline.id).to eq(nil)
    end


    it 'loads a post made on the timeline' do
      user = create(:user)
      post = create(:post, wall_id: nil)
      timeline.add_posts
      expect(timeline.posts).to eq [post]
    end

    it 'loads posts made on a timeline' do
      user = create(:user)
      post1 = create(:post, wall_id: nil)
      post2 = create(:post, wall_id: nil)
      timeline.add_posts
      expect(timeline.posts.length).to eq 2
    end
  end
end
