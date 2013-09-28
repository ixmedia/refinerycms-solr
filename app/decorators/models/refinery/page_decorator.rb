require 'sunspot_rails'

begin
  Refinery::Page.class_eval do
    searchable do
      text :title, :meta_description, :menu_title, :browser_title

      text :all_page_part_content do
        parts.map { |part| part.body }
      end
    end
  end
rescue NameError
end
