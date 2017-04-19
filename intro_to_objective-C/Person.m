//
//  Person.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

-(void)walk {
    NSString *name = [self firstName];
    NSLog(@"%@ is walking...", name);
}

+(void)sayHello {
    NSLog(@"Hello!");
}

// Deep, non-mutable copy of a Person object
-(id)copyWithZone:(NSZone *)zone {
    Person *person = [[[self class] alloc] init];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

@end
