class Player # The Human subclass inherits from this class.
  attr_reader :token

  def initialize(token)
    @token = token
  end
end
