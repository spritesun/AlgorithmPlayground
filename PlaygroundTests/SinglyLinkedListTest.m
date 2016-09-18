//
//  SinglyLinkedListTest.m
//  Playground
//
//  Created by Long Sun on 17/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SinglyLinkedList.h"

@interface SinglyLinkedListTest : XCTestCase

@end

@implementation SinglyLinkedListTest

- (void)testHappyAccessAndInsert {
    // Insert
    SinglyLinkedList<NSNumber *> *list = [[SinglyLinkedList alloc] init];
    [list insertObject:@10 atIndex:0];
    [list insertObject:@20 atIndex:1];
    [list insertObject:@30 atIndex:2];
    
    // Access
    XCTAssertEqual([list objectAtIndex:0], @10);
    XCTAssertEqual([list objectAtIndex:1], @20);
    XCTAssertEqual([list objectAtIndex:2], @30);
}

- (void)testInsertOutofBound {
    SinglyLinkedList<NSNumber *> *list = [[SinglyLinkedList alloc] init];
    XCTAssertThrowsSpecificNamed([list insertObject:@10 atIndex:1], NSException, NSRangeException);
    XCTAssertNoThrow([list insertObject:@10 atIndex:0]);
}

- (void)testInsertNSNull {
    SinglyLinkedList *list = [[SinglyLinkedList alloc] init];
    [list insertObject:@10 atIndex:0];
    [list insertObject:[NSNull null] atIndex:1];
    [list insertObject:@10 atIndex:2];
    
    XCTAssertEqual([list objectAtIndex:0], @10);
    XCTAssertEqual([list objectAtIndex:1], [NSNull null]);
    XCTAssertEqual([list objectAtIndex:2], @10);
}

- (void)testInsertNil {
    SinglyLinkedList *list = [[SinglyLinkedList alloc] init];
    XCTAssertThrowsSpecificNamed([list insertObject:nil atIndex:0], NSException, NSInvalidArgumentException);
}

- (void)testAccessOutofBound {
    SinglyLinkedList<NSNumber *> *list = [[SinglyLinkedList alloc] init];
    
    XCTAssertThrowsSpecificNamed([list objectAtIndex:0], NSException, NSRangeException);
    
    [list insertObject:@10 atIndex:0];
    
    XCTAssertNoThrow([list objectAtIndex:0]);
    XCTAssertThrowsSpecificNamed([list objectAtIndex:1], NSException, NSRangeException);
}

- (void)testHappySeach {
    SinglyLinkedList<NSString *> *list = [[SinglyLinkedList alloc] init];
    [list insertObject:@"first" atIndex:0];
    [list insertObject:@"second" atIndex:1];
    [list insertObject:@"third" atIndex:2];
    
    XCTAssertEqual([list indexOfObject:@"first"], 0);
    XCTAssertEqual([list indexOfObject:@"second"], 1);
    XCTAssertEqual([list indexOfObject:@"third"], 2);
    XCTAssertEqual([list indexOfObject:@"not exist"], NSNotFound);
}

- (void)testSeachEmptyList {
    SinglyLinkedList<NSString *> *list = [[SinglyLinkedList alloc] init];
    XCTAssertEqual([list indexOfObject:@""], NSNotFound);
}

- (void)testSeachNil {
    SinglyLinkedList<NSString *> *list = [[SinglyLinkedList alloc] init];
    XCTAssertThrowsSpecificNamed([list indexOfObject:nil], NSException, NSInvalidArgumentException);
}

- (void)testSeachNSNull {
    SinglyLinkedList *list = [[SinglyLinkedList alloc] init];
    [list insertObject:@10 atIndex:0];
    [list insertObject:[NSNull null] atIndex:1];
    [list insertObject:@10 atIndex:2];
    
    XCTAssertEqual([list indexOfObject:[NSNull null]], 1);
}

- (void)testSeachDuplicateObjectReturnFirstAppearIndex {
    SinglyLinkedList *list = [[SinglyLinkedList alloc] init];
    [list insertObject:@30 atIndex:0];
    [list insertObject:@20 atIndex:0];
    [list insertObject:@30 atIndex:0];
    [list insertObject:@10 atIndex:0];
    
    XCTAssertEqual([list indexOfObject:@30], 1);
}

- (void)testDeleteAtIndexAndOutOfIndex {
    SinglyLinkedList *list = [[SinglyLinkedList alloc] init];
    
    XCTAssertThrowsSpecificNamed([list deleteObjectAtIndex:0], NSException, NSRangeException);
    
    [list insertObject:@"first" atIndex:0];
    [list insertObject:@2 atIndex:1];
    [list insertObject:@"third" atIndex:2];
    
    XCTAssertEqual([list objectAtIndex:0], @"first");
    
    XCTAssertNoThrow([list deleteObjectAtIndex:0]);
    
    XCTAssertEqual([list objectAtIndex:0], @2);
    XCTAssertEqual([list objectAtIndex:1], @"third");
    
    XCTAssertThrowsSpecificNamed([list deleteObjectAtIndex:2], NSException, NSRangeException);
}

@end
