class User < ActiveRecord::Base
  has_many :works, dependent: :destroy
  has_many :digged_works
  has_many :digs, class_name: 'Work', through: :digged_works, source: :work

  def keeps (work)
    digs << work
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
