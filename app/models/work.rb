class Work < ActiveRecord::Base
  belongs_to :user
  has_many :digged_works
  has_many :digged_by, class_name: 'User', through: :digged_works, source: :user


  #validates :public, { presence: true }
  validates :media_type, { presence: true }
  validates :info, { presence: true}
  validates :title, { presence: true }
  validates :artist, { presence: true }
  validates :year, numericality: { only_integer: true }
end
