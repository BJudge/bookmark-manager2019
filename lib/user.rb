require_relative './database_connection'
require 'bcrypt'

class User
  def self.create(email:, password:)
    encypted_password = BCrypt::Password.create(password
    )
    result = DatabaseConnection.query("INSERT INTO users (email, password) VALUES('#{email}', '#{encypted_password}') RETURNING id, email;")

    User.new(id: result[0]['id'], email: result[0]['email'])
  end

  attr_reader :id, :email

  def initialize(id:, email:)
    @id = id
    @email = email
  end

  def self.find(id)
    return nil unless id
    result = DatabaseConnection.query("SELECT * FROM users WHERE id = #{id}")
    User.new(id: result[0]['id'],
      email: result[0]['email'])
  end
end
