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


- (void)testImpl1 {
    UniqueCharsTester *strTester = [UniqueCharsTester new];
    
    XCTAssertTrue([strTester isStrAllUniqueChars1:nil]);
    XCTAssertTrue([strTester isStrAllUniqueChars1:@""]);
    XCTAssertTrue([strTester isStrAllUniqueChars1:@"b"]);
    XCTAssertTrue([strTester isStrAllUniqueChars1:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars1:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæa"]);
    XCTAssertFalse([strTester isStrAllUniqueChars1:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâææ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars1:@"bcdefghijklmnopqrstuvwxyzABCD!@#$àáâæD"]);
}

- (void)testImpl2 {
    UniqueCharsTester *strTester = [UniqueCharsTester new];
    
    XCTAssertTrue([strTester isStrAllUniqueChars2:nil]);
    XCTAssertTrue([strTester isStrAllUniqueChars2:@""]);
    XCTAssertTrue([strTester isStrAllUniqueChars2:@"b"]);
    XCTAssertTrue([strTester isStrAllUniqueChars2:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæÿ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars2:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâæa"]);
    XCTAssertFalse([strTester isStrAllUniqueChars2:@"abcdefghijklmnopqrstuvwxyzABCD!@#$àáâææ"]);
    XCTAssertFalse([strTester isStrAllUniqueChars2:@"bcdefghijklmnopqrstuvwxyzABCD!@#$àáâæD"]);
}

- (void)testImpl3 {
    UniqueCharsTester *strTester = [UniqueCharsTester new];
    
    XCTAssertTrue([strTester isStrAllUniqueChars3:nil]);
    XCTAssertTrue([strTester isStrAllUniqueChars3:@""]);
    XCTAssertTrue([strTester isStrAllUniqueChars3:@"b"]);
    XCTAssertTrue([strTester isStrAllUniqueChars3:@"abcdefghijklmnopqrstuvwxyz"]);
    XCTAssertFalse([strTester isStrAllUniqueChars3:@"banana"]);
    XCTAssertTrue([strTester isStrAllUniqueChars3:@"orange"]);
}

@end
