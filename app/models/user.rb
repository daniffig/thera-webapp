class User < ApplicationRecord
  has_many :photos

  attr_accessor :session_id

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :last_session_id, presence: true

  def sign_in(session)
    session[:user_id] = self.id

    self.last_session_id = session[:session_id]

    self.save
  end

  def store_dir
    "#{email}/#{last_session_id}"
  end

end
