class User < ActiveRecord::Base
  has_many :works

  has_many :digged_works
  has_many :digs, class_name: 'User', through: :digged_work, source: :work

  def keeps (work)
    digs << work
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
