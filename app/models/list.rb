class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :name, uniqueness: true

  def destroy
    self.movies.destroy_all
  end
end
