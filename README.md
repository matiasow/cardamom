# Cardamom: Spice up your Cuba app!

[![Gem Version](https://badge.fury.io/rb/cardamom.svg)][gem]
[![Dependency Status](https://gemnasium.com/matiasow/cardamom.svg)][gemnasium]
[![Code Climate](https://codeclimate.com/github/matiasow/cardamom/badges/gpa.svg)][codeclimate]
[![Build Status](https://travis-ci.org/matiasow/cardamom.svg?branch=master)][travis]
[![Test Coverage](https://codeclimate.com/github/matiasow/cardamom/badges/coverage.svg)][codeclimate]

[gem]: http://badge.fury.io/rb/cardamom
[gemnasium]: https://gemnasium.com/matiasow/cardamom
[codeclimate]: https://codeclimate.com/github/matiasow/cardamom
[travis]: https://travis-ci.org/matiasow/cardamom

Helpers for Cuba apps

## Installation

Simply run

```console
$ gem install cardamom
```

## Usage

Only use what you need. For instance, if you just want to use ```string_helpers``` add this code to your application:

```ruby
require 'cardamom/string_helpers'

Cuba.plugin StringHelpers
```

To use ALL helpers available:

```ruby
require 'cardamom'
Cuba.plugin Cardamom
```

## Available Helpers

As of today, available helpers are:

 - StringHelpers
 - HashHelpers
 - JsonHelpers
 - ResponseHelpers
