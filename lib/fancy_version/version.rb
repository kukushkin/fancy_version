require 'fancy_version/codename'

module FancyVersion
  VERSION = "0.0.1"
  VERSION_CODENAME = FancyVersion.codename( VERSION )
end
