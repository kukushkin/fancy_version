# FancyVersion

An attempt to add style to your application's version.

## Idea

Alongside with the standard *major.minor.revision* format, generate a codename that will reflect the version. Like Ubuntu releases, each having a corresponding codename (Natty Narwhal, heh?).

For example, let's take the standard version string apart:

* **major version** — this changes rarely and a *noun* represents it well. After all, another major release of a software project is a completely different *being*.
* **minor version** — this is a variation of a major release and could serve as indication of its maturity, so let's go with an adjective describing age, i.e. "newborn", "young", "adolescent", "adult", "elderly" etc.
* **revision number** — this is a variation of a variation and could represent anything depending on the development/deployment process. For the example here, let's go with another adjective, like quality, i.e. "silly", "grumpy", "horrible".

So, according to this scheme, version number `1.2.3` may be translated to something like 'Ape'.'Young'.'Horrible', or according to English grammar: `Horrible Young Ape`. Cool, huh?

Another good idea is to use words starting with 'A' to represent number 1, 'B' - number 2 and so on. That's completely unnecessary, but adds some more coolness in my humble opinion.


## Installation

Add this line to your application's Gemfile:

    gem 'fancy_version'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancy_version

## Usage

This usually goes into your `lib/my_app_name/version.rb`:

```
require "fancy_version"

module MyAppName
  VERSION = "1.2.3"
  VERSION_CODENAME = FancyVersion.codename( VERSION ) # => "Horrible Young Ape"
end
```

## TODO:

- write comprehensive docs
- add complete dictionary (or dictionaries)
- provide methods/options to deal with versions starting with 0 (vs 1)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
