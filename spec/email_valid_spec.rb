require 'spec_helper'

describe EmailValidator do

  context "class method valid?" do
    it "returns true if email is valid" do
      expect(EmailValidator.valid?('ole@example.com')).to be_truthy
    end
    it "returns false if email is invalid" do
      expect(EmailValidator.valid?('ole')).to be_falsy
    end
  end

end
