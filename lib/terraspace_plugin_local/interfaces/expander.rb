module TerraspacePluginLocal::Interfaces
  class Expander
    include Terraspace::Plugin::Expander::Interface

    def region
      "local"
    end
  end
end
