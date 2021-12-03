require "memoist"
require "terraspace" # for interface

require "terraspace_plugin_local/version"
require "terraspace_plugin_local/autoloader"
TerraspacePluginLocal::Autoloader.setup

module TerraspacePluginLocal
  class Error < StandardError; end

  # Friendlier method for config/plugins/local.rb. Example:
  #
  #     TerraspacePluginLocal.configure do |config|
  #     end
  #
  def configure(&block)
    Interfaces::Config.instance.configure(&block)
  end

  def config
    Interfaces::Config.instance.config
  end

  @@logger = nil
  def logger
    @@logger ||= Terraspace.logger
  end

  def logger=(v)
    @@logger = v
  end

  extend self
end

Terraspace::Plugin.register("local",
  backend: "local",
  config_class: TerraspacePluginLocal::Interfaces::Config,
  root: File.dirname(__dir__),
)
