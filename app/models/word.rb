class Word < ActiveRecord::Base
  has_many :comments
  default_scope -> { order('name') }

  scope :by_letter,
        lambda { |letter| {
            :conditions => ["words.name LIKE ?", "#{letter}%"]
        }}

  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(name) like ?", "%#{query.mb_chars.downcase}%")
  end
end
