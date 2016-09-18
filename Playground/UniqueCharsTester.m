//
//  UniqueCharsTester.m
//  Playground
//
//  Created by Long Sun on 18/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import "UniqueCharsTester.h"

@implementation UniqueCharsTester

// No extract data structure
- (BOOL)isStrAllUniqueChars1:(NSString *)str {
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

// Use extra array, assume ASCII
- (BOOL)isStrAllUniqueChars2:(NSString *)str {
    NSUInteger len = [str length];
    if (len <= 1) return YES;
    unichar buffer[len];
    [str getCharacters:buffer range:NSMakeRange(0, len)];
    
    bool checkers[256];
    memset(checkers, 0, 256);
    for (NSUInteger i = 0; i < len; i++) {
        NSUInteger index = buffer[i] - '\0'; // assume ASCII, start with null char
        NSAssert1(index < 256, @"index %@ should less than 256", @(index));
        if (checkers[index]) {
            return NO;
        } else {
            checkers[index] = YES;
        }
    }
    
    return YES;
}

// No extra data structure, assume a-z
- (BOOL)isStrAllUniqueChars3:(NSString *)str {
    NSUInteger len = [str length];
    if (len <= 1) return YES;
    unichar buffer[len];
    [str getCharacters:buffer range:NSMakeRange(0, len)];
    
    int checkers = 0;
    for (NSUInteger i = 0; i < len; i++) {
        NSUInteger index = buffer[i] - 'a'; // assume a-z
        NSAssert1(index < 32, @"index %@ should less than 32", @(index));
        if ((checkers & (1 << index)) > 0) {
            return NO;
        } else {
            checkers |= (1 << index);
        }
    }
    
    return YES;
}
@end
