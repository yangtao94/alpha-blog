class User < ApplicationRecord
  #create one to many association
  has_many :articles
  #lowercase all emails
  before_save {self.email = email.downcase }
  
    #validation, not case sensitive
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum:5, maximum: 25}

  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i         
  validates :email, presence: true,
            uniqueness: {case_sensitive: false},
            length: { maximum: 105 },
            format: {with: VALID_EMAIL_REGEX}


end