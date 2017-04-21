//
//  EmployeeDatabase.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/18/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeDatabase : NSObject

+(instancetype)shared;

-(NSInteger)count;
-(NSArray *)allEmployees;
-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;
-(void)remove:(Employee *)employee;
-(void)removeEmployeeAtIndex:(int)index;
-(void)removeEmployeeFromTableAtIndex:(int)index;

-(void)removeAllEmployees;

@end
