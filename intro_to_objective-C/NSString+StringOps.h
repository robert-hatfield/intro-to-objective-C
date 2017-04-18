//
//  NSString+StringOps.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (StringOps)

-(NSArray *)wordList;
+(NSString *)reversedString: (NSString *) string;

@end
