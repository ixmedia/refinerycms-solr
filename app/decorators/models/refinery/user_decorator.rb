require 'acts_as_indexed'

begin
  Refinery::User.class_eval do
    searchable do
      text :username, :email
    end
  end
rescue NameError
end
