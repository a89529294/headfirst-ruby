class IsbnVerifier
  def self.valid?(str)
    arr = str.gsub('-', '').split('').map { _1.to_i }
    return false if arr.length != 10

    idx = 0
    sum = 0
    until idx == 10
      sum += arr[idx] * (10 - idx)
      idx += 1
    end

    (sum % 11).zero?
  end
end

p IsbnVerifier.valid?('3-598-21508-8')
