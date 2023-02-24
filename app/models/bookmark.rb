class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true
  validates :comment, length: { minimum: 6 }, presence: true
  validates :id, uniqueness: true
  validates_uniqueness_of :movie, scope: :list
end
