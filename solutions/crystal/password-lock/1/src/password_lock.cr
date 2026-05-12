class PasswordLock
  def initialize(@password : (Int32 | Float64 | String))
  end

  def encrypted(password)
    if password.is_a?(String)
      password.reverse
    elsif password.is_a?(Int32)
      (password / 2).round(0)
    else
      password * 4
    end
  end

  def encrypt
    @password = encrypted(@password)
  end

  def unlock?(password)
    @password == encrypted(password) ? "Unlocked" : nil
  end
end
