class User < ActiveRecord::Base
  has_many :works, dependent: :destroy
  has_many :digged_works
  has_many :digs, class_name: 'Work', through: :digged_works, source: :work
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def keeps (work)
    digs << work
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
