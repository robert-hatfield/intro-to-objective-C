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

// +(NSString *)reverseString: (NSString *) string {
    
// }

@end
