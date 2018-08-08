class User
  include ActiveModel::Model

  attr_accessor :name, :email

  def self.find_or_create_by(params = {})
    User.new params
  end

  def self.find_by(params = {})
    User.new params
  end
end