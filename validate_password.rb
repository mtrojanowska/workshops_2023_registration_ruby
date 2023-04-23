class ValidatePassword
  attr_accessor :password

  def initialize(password)
    @password = password.chars
  end

  UPPERCASES = ('A'..'Z').to_a
  DOWNCASES = ('a'..'z').to_a
  NUMBERS = ('0'..'9').to_a
  SPECIALS = '! @ # $ % & * + = : ; ? < >'.chars

  def letter_repetition
    @password.join =~ /([[:alpha:]])\1{2,}/
  end

  def password_length
    return false if letter_repetition

    password.size >= 6 && password.size <= 24
  end

  def check_upcase
    (UPPERCASES & password).any?
  end

  def check_downcase
    (DOWNCASES & password).any?
  end

  def check_numbers
    (NUMBERS & password).any?
  end

  def check_specials
    (SPECIALS & password).any?
  end

  def perform
    password_length && check_upcase && check_downcase && check_specials && check_numbers
  end
end

p ValidatePassword.new('PassswordDD9!!!').perform
