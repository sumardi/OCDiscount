# Discount Markdown Processor for iOS and OS X

Discount is an implementation of John Gruber's Markdown markup language in C. It
implements all of the language described in [the markdown syntax document][1] and
passes the [Markdown 1.0 test suite][2].

Discount was developed by [David Loren Parsons][3]. The CocoaPods is maintained by [Sumardi Shukor][4].

[1]: http://daringfireball.net/projects/markdown/syntax
[2]: http://daringfireball.net/projects/downloads/MarkdownTest_1.0.zip
[3]: http://www.pell.portland.or.us/~orc
[4]: https://github.com/sumardi

## Installation

[CocoaPods][5] is the recommended way to add OCDiscount to your project.  

Here's an example podfile that installs OCDiscount. 

[5]: http://www.cocoapods.org

### Podfile

```ruby
platform :osx, '10.8'
pod 'OCDiscount', '0.1.0'
```

Then run `pod install`.

## Usage

```objective-c
#import <OCDiscount/NSString+Markdown.h>
...
NSString *test = @"*Hello* from **markdown**!";
NSLog(@"%@", [markdown htmlWithMarkdown]);
...
```

## License 

Discount is free software;  it is released under a BSD-style license
that allows you to do as you wish with it as long as you don't attempt
to claim it as your own work. OCDiscount is available under the MIT license.