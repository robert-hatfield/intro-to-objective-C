//
//  Employee.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Person.h"

@interface Employee : Person

@property NSInteger employeeNumber;
@property NSInteger yearsEmployed;
@property NSString *managerName;

@end
