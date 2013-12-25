module FancyVersion

  class Dictionary
    attr_accessor :major, :minor, :revision

    def initialize( dict_major, dict_minor, dict_revision )
      self.major    = dict_major
      self.minor    = dict_minor
      self.revision = dict_revision
    end

    def try( dict, idx )
      v = (send dict.to_sym).send :"[]", idx.to_i
      v.nil? ? idx : v
    end

  end # class Dictionary

  DICTIONARY_EXAMPLE = Dictionary.new(
    %w{zebra ape buffallo cheetah dolphin eagle}, # _Z_ebra for zero
    %w{newborn young adolescent adult elderly},
    %w{silly grumpy horrible}
  )

  DEFAULTS = {
    :dictionary => DICTIONARY_EXAMPLE,
  }

  def self.codename( version_str, opts = {} )
    options = DEFAULTS.merge( opts )
    major, minor, revision = version_str.split(".")
    codename = []
    codename << options[:dictionary].try( :major, major )
    codename << options[:dictionary].try( :minor, minor )
    codename << options[:dictionary].try( :revision, revision )
    codename.map(&:to_s).map(&:capitalize).reverse.join(' ')
  end

end # module FancyVersion