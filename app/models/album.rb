class Album < ApplicationRecord
  has_one_attached :images
end
