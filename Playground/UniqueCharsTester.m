//
//  UniqueCharsTester.m
//  Playground
//
//  Created by Long Sun on 18/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import "UniqueCharsTester.h"

@implementation UniqueCharsTester

- (BOOL)isStrAllUniqueChars:(NSString *)str {
    NSUInteger len = [str length];
    if (len <= 1) return YES;
    unichar buffer[len];
    [str getCharacters:buffer range:NSMakeRange(0, len)];
    
    for (NSUInteger i = 0; i < len - 1; i++) {
        unichar curr = buffer[i];
        for (NSUInteger j = i + 1; j < len; j++) {
            if (curr == buffer[j]) return NO;
        }
    }
    return YES;
}

@end
