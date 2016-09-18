//
//  SinglyLinkedList.m
//  Playground
//
//  Created by Long Sun on 17/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import "SinglyLinkedList.h"
#import "SinglyLinkedListElement.h"

@interface SinglyLinkedList ()
@property (nonatomic, strong) SinglyLinkedListElement *first;
@end

@implementation SinglyLinkedList

- (SinglyLinkedListElement *)elementAtIndex:(NSUInteger)index {
    SinglyLinkedListElement *current = self.first;
    while (index > 0) {
        if (current == nil) {
            [NSException raise:NSRangeException format:@"index out of bound"];
        }
        index--;
        current = current.nextElement;
    }
    if (current == nil) {
        [NSException raise:NSRangeException format:@"index out of bound"];
    }
    return current;
}

- (id)objectAtIndex:(NSUInteger)index {
    return [self elementAtIndex:index].object;
}

- (NSUInteger)indexOfObject:(id)object {
    if (object == nil) {
        [NSException raise:NSInvalidArgumentException format:@"can not search for nil"];
    }
    NSUInteger index = 0;
    SinglyLinkedListElement *current = self.first;
    while (![current.object isEqual:object]) {
        index++;
        current = current.nextElement;
        if (current == nil) {
            return NSNotFound;
        }
    }
    return index;
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    if (object == nil) {
        [NSException raise:NSInvalidArgumentException format:@"can not insert nil"];
    }
    if (index == 0) {
        self.first = [[SinglyLinkedListElement alloc] initWithObject:object next:self.first];
    } else {
        SinglyLinkedListElement *previous = [self elementAtIndex:(index - 1)];
        SinglyLinkedListElement *current = previous.nextElement;
        previous.nextElement = [[SinglyLinkedListElement alloc] initWithObject:object next:current];
    }
}

- (void)deleteObjectAtIndex:(NSUInteger)index {
    if (index == 0) {
        if (self.first == nil) {
            [NSException raise:NSRangeException format:@"index out of bound"];
        }
        self.first = self.first.nextElement;
    } else {
        SinglyLinkedListElement *previous = [self elementAtIndex:(index - 1)];
        SinglyLinkedListElement *current = previous.nextElement;
        if (current == nil) {
            [NSException raise:NSRangeException format:@"index out of bound"];
        }
        SinglyLinkedListElement *next = current.nextElement;
        previous.nextElement = next;
    }
}

@end
