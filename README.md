# TZWhere

Lookup a time zone by latitude/longitude using the nearest neighbor method.

## Caveats

The nearest neighbor method can sometimes be inacurrate, if compared to a point
lookup in a polygon. In most cases, the risk of inaccuracy is acceptable.

## Installation

Add this line to your application's Gemfile:

    gem 'tzwhere'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tzwhere

## Usage

    TZWhere.lookup(41.7599, -87.2079)

    # => "America/Chicago"

## Running Tests

Ensure the test dependencies are installed:

    $ bundle

Run the test suite:

    $ rake test

## Contributing

See CONTRIBUTING.md

## Copyright

Copyright (c) 2014 Adam Daniels (<adam@mediadrive.ca>).

Geocode data (points.dat) by [Geonames.org](http://www.geonames.org) is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/)

See LICENSE for details.
