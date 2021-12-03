module TerraspacePluginLocal::Interfaces
  class Config
    include Terraspace::Plugin::Config::Interface
    include Singleton

    # interface method
    # load_project_config: config/plugins/local.rb
    def provider
      "local"
    end

    # interface method
    def defaults
      c = ActiveSupport::OrderedOptions.new
      c
    end
  end
end
