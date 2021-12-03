require 'fileutils'

module TerraspacePluginLocal::Interfaces
  class Backend
    include Terraspace::Plugin::Backend::Interface

    # interface method
    def call
      FileUtils.mkdir_p @info["path"]
    end
  end
end
