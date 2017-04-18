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
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName {
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        // Generate a random integer for employee number.
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    
    return self;
}

-(id)copyWithZone:(NSZone *)zone {
    // Allocation & init occurs on the parent Person class's copyWithZone method.
    Employee *employee = [super copyWithZone:zone];
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end
