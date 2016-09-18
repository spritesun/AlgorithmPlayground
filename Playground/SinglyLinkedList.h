//
//  SinglyLinkedList.h
//  Playground
//
//  Created by Long Sun on 17/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SinglyLinkedList<T> : NSObject
- (T)objectAtIndex:(NSUInteger)index;
- (NSUInteger)indexOfObject:(T)object;
- (void)insertObject:(T)object atIndex:(NSUInteger)index;
- (void)deleteObjectAtIndex:(NSUInteger)index;
@end
