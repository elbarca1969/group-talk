class Tweet < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy

  validates :content, presence: true, unless: :was_attached?,
                      length_with_wide_char: { maximum: 400 }

  def was_attached?
    self.image.attached?
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

end
