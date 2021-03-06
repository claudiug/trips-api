class ApiKey < ActiveRecord::Base
  before_create :generate_token

  private

  def generate_token
    begin
      self.auth_token = SecureRandom.hex
    end while self.class.exists?(auth_token: auth_token)
  end
end
