class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users, dependent: :destroy
  has_many :tweets, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true

  def self.search(search)
    if search != ""
      Group.where('name LIKE(?)', "%#{search}%")
    else
      Group.all
    end
  end

end
