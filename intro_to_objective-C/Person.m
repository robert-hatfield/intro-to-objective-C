//
//  Person.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Person.h"

@implementation Person

// Setter & getter methods no longer needed in Obj-C 2

//NSString *_name; // underlying instance variable
//
//-(NSString *)name { // getter method
//    return _name;
//}
//
//-(void)setName:(NSString *)name { // setter method
//    _name = name;
//}



-(void)walk {
    NSString *name = [self firstName];
    NSLog(@"%@ is walking...", name);
}

+(void)sayHello {
    NSLog(@"Hello!");
}

@end
