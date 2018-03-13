# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails
  @@list = []

  def initialize(emails)
    @emails = emails
  end #def initialize

  def parse
    emails.split(/\s|,/).each do |emails|
      @@list << emails
    end

@@list.delete("")
@@list.uniq
binding.pry

  end #def parse

end #def class EmailParser
