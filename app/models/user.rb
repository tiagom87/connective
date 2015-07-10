# Schema
# 	  add_column :users, :name, :string
# 	  add_column :users, :mini_bio, :string
#     add_column :users, :nationality, :string
#     add_column :users, :latest_position, :string
#     add_column :users, :university, :string
#     add_column :users, :experience, :text


class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  after_create :set_guid

  def set_guid
		self.guid = SecureRandom.uuid()
		self.save
	end
end
