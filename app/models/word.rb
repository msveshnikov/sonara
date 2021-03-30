class Word < ActiveRecord::Base
  has_many :comments
  default_scope -> { order('name') }

  def self.letter(letter)
    where("name LIKE ?", "#{letter}%")
  end

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    where("lower(name) like ?", "%#{query}%")
  end
end
