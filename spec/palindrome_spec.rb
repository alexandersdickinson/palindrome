require('palindrome')
require('rspec')

describe('String#palindrome') do
  it('returns a palindrome of a sentence') do
    expect('go hang a salami'.palindrome()).to(eq('go hang a salamiimalas a gnah og'))
  end
end