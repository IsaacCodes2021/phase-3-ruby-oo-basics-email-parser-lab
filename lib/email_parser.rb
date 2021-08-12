# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# .reject! { |s| s.nil? || s.strip.empty? }

require "pry"

class EmailAddressParser 
     # attr_accessor :email_addresses
def initialize (email_addresses)
    @email_addresses = email_addresses
end
    # binding.pry
    def parse
        @email_addresses.split(/[, ]/).reject { |s| s.nil? || s.strip.empty? }.uniq
    end
end

email = EmailAddressParser.new("john@doe.com, person@somewhere.org").parse