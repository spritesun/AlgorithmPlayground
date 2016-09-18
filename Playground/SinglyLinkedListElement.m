//
//  SinglyLinkedListElement.m
//  Playground
//
//  Created by Long Sun on 17/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import "SinglyLinkedListElement.h"

@implementation SinglyLinkedListElement
- (instancetype)initWithObject:(id)object next:(SinglyLinkedListElement *)next {
    self = [super init];
    if (self) {
        self.object = object;
        self.nextElement = next;
    }
    return self;
}
@end
