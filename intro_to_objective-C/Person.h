//
//  Person.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(retain, nonatomic) NSString *firstName;
@property(retain, nonatomic) NSString *lastName;
@property(retain, nonatomic) NSNumber *age;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age;

// Instance method
-(void)walk;

// Class method
+(void)sayHello;

@end
