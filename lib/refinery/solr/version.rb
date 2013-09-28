module Refinery
  module Solr
    class Version
      @major = 1
      @minor = 0
      @tiny  = 4
      @build = nil

      class << self
        attr_reader :major, :minor, :tiny, :build

        def to_s
          [@major, @minor, @tiny, @build].compact.join('.')
        end
      end
    end
  end
end
