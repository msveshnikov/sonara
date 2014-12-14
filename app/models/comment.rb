class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :word

  default_scope -> { order('created_at DESC') }

  validates :user_id, presence: true
  validates :word_id, presence: true
  validates :content, presence: true, length: {maximum: 500}

  def self.from_word(word)
    where("word_id = ?", word)
  end
end
