//
//  SinglyLinkedListElement.h
//  Playground
//
//  Created by Long Sun on 17/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SinglyLinkedListElement<T> : NSObject
@property (nonatomic, strong) T object;
@property (nonatomic, strong) SinglyLinkedListElement *nextElement;

- (instancetype)initWithObject:(T)object next:(SinglyLinkedListElement *)next;
@end
