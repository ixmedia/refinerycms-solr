require 'sunspot_rails'

begin
  Refinery::Image.class_eval do
    searchable do
      text :title
    end
  end
rescue NameError
end
