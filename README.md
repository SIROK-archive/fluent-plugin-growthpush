# Fluent::Plugin::Growthpush

[![Build Status](https://travis-ci.org/sota0805/fluent-plugin-growthpush.svg)](https://travis-ci.org/sota0805/fluent-plugin-growthpush)
[![Code Climate](https://codeclimate.com/github/sota0805/fluent-plugin-growthpush.png)](https://codeclimate.com/github/sota0805/fluent-plugin-growthpush)
[![Coverage Status](https://coveralls.io/repos/sota0805/fluent-plugin-growthpush/badge.png)](https://coveralls.io/r/sota0805/fluent-plugin-growthpush)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/sota0805/fluent-plugin-growthpush/trend.png)](https://bitdeli.com/free "Bitdeli Badge")


TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-growthpush'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-growthpush

## Usage

### Output Sample

``` 
<source>
  type http
  port 8888
</source>

<match out_growth.**>
  type growthpush
  application_id YOUR_APPLICATION_ID
  secret         YOUR_SECRET
</match>
```

### debug

```
$ echo '{}' | fluent-cat out_growthpush
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Copyright

Copyright © 2014 -  ( URL )

## License

fluent-plugin-growthpush is licensed under the MIT License - see the LICENSE file for details
