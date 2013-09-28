require "active_record"

module ActiveRecord
  module Solr
    def with_query(query)
      results = self.name.constantize.search { fulltext query }.results
      ids = results.inject([]) {|ids, record| ids << record.id}
      self.where(id: ids)
    end
  end
end

ActiveRecord::Base.extend ActiveRecord::Solr