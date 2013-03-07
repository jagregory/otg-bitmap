# Bitmap

Dead simple Bitmap implementation in Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'otg-bitmap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install otg-bitmap

## Usage

``` ruby
bmp = Bitmap.new(5)
bmp.on(0)
bmp.on(3)
bmp.to_s
# => {10010}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
