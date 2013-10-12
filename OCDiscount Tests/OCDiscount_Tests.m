//
//  OCDiscount_Tests.m
//  OCDiscount Tests
//
//  Created by Sumardi Shukor on 10/13/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Markdown.h"

@interface OCDiscount_Tests : XCTestCase

@end

@implementation OCDiscount_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMarkdownResult
{
    NSString *markdown = @"**this is a test**";
    
    XCTAssertTrue([[markdown htmlWithMarkdown] isEqualToString:@"<p><strong>this is a test</strong></p>"], @"Markdown does not match");
}

@end
