# RBThrottler

[![CI Status](https://img.shields.io/travis/rezabina86/RBThrottler.svg?style=flat)](https://travis-ci.org/rezabina86/RBThrottler)
[![Version](https://img.shields.io/cocoapods/v/RBThrottler.svg?style=flat)](https://cocoapods.org/pods/RBThrottler)
[![License](https://img.shields.io/cocoapods/l/RBThrottler.svg?style=flat)](https://cocoapods.org/pods/RBThrottler)
[![Platform](https://img.shields.io/cocoapods/p/RBThrottler.svg?style=flat)](https://cocoapods.org/pods/RBThrottler)

Throttling wraps a block of code with throttling logic, guaranteeing that an action will never be called more than once each specified interval.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
var throttler : Throttler?
var counter = 0

override func viewDidLoad() {
   super.viewDidLoad()
   self.throttler = Throttler(seconds: 5)
}

@IBAction func buttonDidTapped(_ sender: UIButton) {
   self.counter += 1
   self.throttler?.throttle(block: {
      print(self.counter)
   })
}
```

## Requirements

## Installation

RBThrottler is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RBThrottler'
```

## Author

rezabina86, tavakolibina@gmail.com

## License

RBThrottler is available under the MIT license. See the LICENSE file for more info.
