//
//  PermutationCheckerTest.m
//  Playground
//
//  Created by Long Sun on 19/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PermutationChecker.h"

@interface PermutationCheckerTest : XCTestCase

@end

@implementation PermutationCheckerTest

- (void)testExample {
    PermutationChecker *checker = [PermutationChecker new];
    XCTAssertTrue([checker isString:@"abbc" permutationOfOtherString:@"abcb"]);
    XCTAssertTrue([checker isString:@"abbcdddo" permutationOfOtherString:@"odddcbab"]);
    XCTAssertFalse([checker isString:@"abbcdddo" permutationOfOtherString:@"odddcba"]);
    XCTAssertFalse([checker isString:@"abbcdddo" permutationOfOtherString:@"odddcaab"]);
    XCTAssertTrue([checker isString:@"" permutationOfOtherString:@""]);
}

@end
