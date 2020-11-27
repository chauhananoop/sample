class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	validates :gender, inclusion:{ in: %w(male female other)}
	validates :age, numericality: { greater_than:20 }
	validates :first_name, presence: true

end
