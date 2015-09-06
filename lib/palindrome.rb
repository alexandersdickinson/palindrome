class String
  def palindrome
    palin = []
    self.each_char() do |char|
      palin.unshift(char)
    end
    palin = palin.join('')
    palin = self + palin
  end
end