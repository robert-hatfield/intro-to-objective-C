//
//  Person.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonnull) NSString *name;

// Name accessor methods - not needed in Obj-C 2
//-(NSString *)name;
//-(void)setName:(NSString *)name;

// Instance method
-(void)walk;

// Class method
+(void)sayHello;

@end
