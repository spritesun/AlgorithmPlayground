//
//  UniqueCharsTesterTest.m
//  Playground
//
//  Created by Long Sun on 18/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UniqueCharsTester.h"

@interface UniqueCharsTesterTest : XCTestCase

@end

@implementation UniqueCharsTesterTest


- (void)testExample {
    UniqueCharsTester *strTester = [UniqueCharsTester new];
    
    XCTAssertTrue([strTester isStrAllUniqueChars:nil]);
    XCTAssertTrue([strTester isStrAllUniqueChars:@""]);
    XCTAssertTrue([strTester isStrAllUniqueChars:@"b"]);
    XCTAssertTrue([strTester isStrAllUniqueChars:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæa"]);
    XCTAssertFalse([strTester isStrAllUniqueChars:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâææ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars:@"bcdefghijklmnopqrstuvwxyzABCD!@#$àáâæD"]);
    XCTAssertEqual(1 << 8, 256);
    XCTAssertEqual(1 << 31, INT_MIN);
    XCTAssertEqual(~INT_MIN, INT_MAX);
}

@end
