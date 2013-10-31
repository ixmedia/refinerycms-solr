module Refinery
  module Solr
    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end
  end
end

require 'refinery/sunspot/rich_document'
require 'refinery/solr/engine'
require 'refinery/solr/active_record'
