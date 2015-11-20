class Work < ActiveRecord::Base
  belongs_to :user

  
  #validates :public, { presence: true }
  validates :media_type, { presence: true }
  validates :title, { presence: true }
  validates :artist, { presence: true }
  validates :year, numericality: { only_integer: true }
end
