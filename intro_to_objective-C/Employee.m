//
//  Employee.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName {
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
        _email = email;
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        // Generate a random integer for employee number.
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    
    return self;
}

// Encode & decode methods
-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
}

// Override setters for use with manual reference counting
-(void) setEmployeeNumber:(NSNumber *)employeeNumber {
    if (_employeeNumber != employeeNumber) {
        [employeeNumber retain];
        [_employeeNumber release];
        
        _employeeNumber = employeeNumber;
    }
}

-(void) setYearsEmployed:(NSNumber *)yearsEmployed {
    if (_yearsEmployed != yearsEmployed) {
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}

-(void) setManagerName:(NSString *)managerName {
    if (_managerName != managerName) {
        [managerName retain];
        [_managerName release];
        
        _managerName = managerName;
    }
}

-(void) setEmail:(NSString *)email {
    if (_email != email) {
        [email retain];
        [_email release];
        
        _email = email;
    }
}



-(id)copyWithZone:(NSZone *)zone {
    // Allocation & init occurs on the parent Person class's copyWithZone method.
    Employee *employee = [super copyWithZone:zone];
    employee.email = self.email;
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

-(void)dealloc {
    // Release retained instance variables
    [_email release];
    [_yearsEmployed release];
    [_managerName release];
    [_employeeNumber release];
    
    [super dealloc];
}

@end
