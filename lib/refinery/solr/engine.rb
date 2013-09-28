module Refinery
  module Solr
    class Engine < Rails::Engine

      include Refinery::Engine

      config.to_prepare do
        Decorators.register! ::Refinery::Solr.root
      end

    end
  end
end
