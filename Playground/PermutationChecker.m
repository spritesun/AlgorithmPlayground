//
//  PermutationChecker.m
//  Playground
//
//  Created by Long Sun on 19/09/2016.
//  Copyright © 2016 Long Sun. All rights reserved.
//

#import "PermutationChecker.h"

@implementation PermutationChecker
- (BOOL)isString:(NSString *)str permutationOfOtherString:(NSString *)otherStr {
    NSUInteger len = [str length];
    NSUInteger otherLen = [otherStr length];
    if (len != otherLen) return NO;
    
    unichar buffer[len];
    [str getCharacters:buffer range:NSMakeRange(0, len)];
    NSMutableDictionary <NSNumber*, NSNumber*>*dict = [NSMutableDictionary new];
    for (NSUInteger i = 0; i < len; i++) {
        NSNumber *letter = @(buffer[i]);
        NSNumber *count = [dict objectForKey:letter];
        if (count == nil) count = @0;
        count = @([count integerValue] + 1);
        [dict setObject:count forKey:letter];
    }
    
    unichar otherBuffer[len];
    [otherStr getCharacters:otherBuffer range:NSMakeRange(0, len)];
    for (NSUInteger i = 0; i < len; i++) {
        NSNumber *letter = @(otherBuffer[i]);
        NSNumber *count = [dict objectForKey:letter];
        if (count == nil) count = @0;
        count = @([count integerValue] - 1);
        if ([count integerValue] < 0) return NO;
        [dict setObject:count forKey:letter];
    }
    
    return YES;
}
@end
