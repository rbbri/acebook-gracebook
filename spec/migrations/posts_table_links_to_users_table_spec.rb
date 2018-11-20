# frozen_string_literal: true

require 'rails_helper'

describe "Associations" do
  it "post has one user" do
    association = Post.reflect_on_association(:user)
    expect(association.macro).to eq :belongs_to
  end
end
