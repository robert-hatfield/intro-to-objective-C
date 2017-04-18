//
//  Employee.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Employee.h"

@implementation Employee


int _employeeNumber;

-(int)employeeNumber { // getter method
    return _employeeNumber;
}

-(void)setEmployeeNumber:(int)employeeNumber {
    _employeeNumber = employeeNumber;
}

int _yearsEmployed;

-(int)yearsEmployed {
    return _yearsEmployed;
}

-(void)setYearsEmployed:(int) yearsEmployed {
    _yearsEmployed = yearsEmployed;
}

NSString *_managerName;

-(NSString *)managerName {
    return _managerName;
}

-(void)setManagerName:(NSString *)managerName {
    _managerName = managerName;
}


@end
