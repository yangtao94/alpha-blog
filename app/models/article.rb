class Article < ApplicationRecord
  #Adding validation, ensure data integrity
  #ensure that there is a title
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}







end