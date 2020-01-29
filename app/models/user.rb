class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :profile
  has_many :services, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_services, through: :favorites, source: :service
  has_many :messages
  has_many :subscriptions
  has_many :chats, through: :subscriptions
  has_many :rental_lists
  has_many :list_sells
  has_many :list_arts
  has_many :list_furnitures

  def to_s
    self.email
  end

  def existing_chats_users
    existing_chat_users = []
    self.chats.each do |chat|
      existing_chat_users.concat(chat.subscriptions.where.not(user_id: self.id).map {|subscription| subscription.user})
    end
    existing_chat_users.uniq
  end
end
