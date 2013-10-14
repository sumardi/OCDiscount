//
//  OCDiscount_Tests.m
//  OCDiscount Tests
//
//  Created by Sumardi Shukor on 10/13/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCDiscount.h"

@interface OCDiscount_Tests : XCTestCase {
    NSString *markdownString;
    NSString *expectedResult;
}

@end

@implementation OCDiscount_Tests

// This method is called before the invocation of each test method in the class.
- (void)setUp
{
    [super setUp];
    
    markdownString = @"**this is a test**";
    expectedResult = @"<p><strong>this is a test</strong></p>";
}

// This method is called after the invocation of each test method in the class.
- (void)tearDown
{
    [super tearDown];
}

- (void)testConvertingMarkdownString
{
    XCTAssertTrue([[markdownString htmlStringFromMarkdown] isEqualToString:expectedResult], @"Markdown could not be converted.");
}

- (void)testConvertingMarkdownFromPath
{
    NSString *path = [[NSBundle bundleForClass:NSClassFromString(@"OCDiscount_Tests")] pathForResource:@"test" ofType:@"md"];
    NSError *error;
    XCTAssertTrue([[OCDiscount convertMarkdownFileAtPath:path error:&error] isEqualToString:expectedResult], @"Markdown does could not be converted.");
}

- (void)testConvertingMarkdownFromURL
{
    NSURL *url = [[NSBundle bundleForClass:NSClassFromString(@"OCDiscount_Tests")] URLForResource:@"test" withExtension:@"md"];
    NSError *error;
    XCTAssertTrue([[OCDiscount convertMarkdownFileAtURL:url error:&error] isEqualToString:expectedResult], @"Markdown does could not be converted.");
}

- (void)testNoFileExistsAtPath
{
    NSString *path = nil;
    NSError *error;
    XCTAssertNil([OCDiscount convertMarkdownFileAtPath:path error:&error], @"String should be nil");
}

- (void)testNoFileExistsAtURL
{
    NSURL *url = nil;
    NSError *error;
    XCTAssertNil([OCDiscount convertMarkdownFileAtURL:url error:&error], @"String should be nil");
}

@end
