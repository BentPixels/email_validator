require 'spec_helper'

describe EmailValidator do
  describe '.valid?' do
    it 'returns true if email is valid' do
      expect(EmailValidator.valid?('ole@example.com')).to be_truthy
    end

    it 'returns false if email is invalid' do
      expect(EmailValidator.valid?('ole')).to be_falsy
      expect(EmailValidator.valid?('ole@example..com')).to be_falsy
    end
  end
end
