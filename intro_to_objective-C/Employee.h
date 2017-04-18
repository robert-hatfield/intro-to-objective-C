//
//  Employee.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "Person.h"

@interface Employee : Person

-(int)employeeNumber;
-(void)setEmployeeNumber:(int)employeeNumber;

-(int)yearsEmployed;
-(void)setYearsEmployed:(int) yearsEmployed;

-(NSString *)managerName;
-(void)setManagerName:(NSString *)managerName;


@end
