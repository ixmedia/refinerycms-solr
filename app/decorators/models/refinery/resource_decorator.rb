require 'sunspot_rails'

begin
  Refinery::Resource.class_eval do
    searchable do
      text :file_name, :title, :type_of_content
      attachment :file
    end
  end
rescue NameError
end
