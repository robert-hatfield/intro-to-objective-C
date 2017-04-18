//
//  NSString+StringOps.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "NSString+StringOps.h"

@implementation NSString (StringOps)

-(NSArray *)wordList {
    NSArray *words = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return words;
}

+(NSString *)reversedString: (NSString *) string {
    int length = (int)[string length];
    NSMutableString *result = [NSMutableString stringWithCapacity:length];
    
    int index;
    
    for (index = length - 1; index >= 0; index -= 1) {
        unichar character = [string characterAtIndex: index];
        [result appendFormat:@"%c", character];
    }
    
    return result;
}

@end
