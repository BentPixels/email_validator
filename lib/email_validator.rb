# Based on work from http://thelucid.com/2010/01/08/sexy-validation-in-edge-rails-rails-3/
class EmailValidator < ActiveModel::EachValidator
  @@default_options = {}

  def self.default_options
    @@default_options
  end

  def validate_each(record, attribute, value)
    options = @@default_options.merge(self.options)
    unless EmailValidator.valid?(value, options)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end

  def self.valid?(email)
    email.match?(/\A\s*([^@\s]{1,256})@((?:[-\p{L}\d]+\.)+\p{L}{2,})\s*\z/i)
  end
end
