//
//  ViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "ViewController.h"
#import "NSString+StringOps.h"
#import "EmployeeDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    How the database singleton will be accessed:
//    [[EmployeeDatabase shared] allEmployees]
    
    Employee *originalEmployee = [[Employee alloc]initWithFirstName:@"Roberto" lastName:@"McCoy" age:@38 email:@"robert@lucidthought.xyz" yearsEmployed:@3 andManager:@"Esequiel"];
    Employee *newEmployee = [originalEmployee copy];
    newEmployee.firstName = @"Brian";
    
    NSLog(@"Original employee is %@", originalEmployee.firstName);
    NSLog(@"NEW employee name is %@", newEmployee.firstName);
    
    Person *robert = [[Person alloc] init];
    [robert setFirstName:@"Robert"];
    [robert setLastName:@"Hatfield"];
    [robert setAge:@40];
    
    
    [robert walk];
    
    [Person sayHello];
    
    NSString *testString = @"Hello there. This is a test string.";
    NSLog(@"%@", [[testString wordList] description]);
    NSLog(@"%@", [NSString reversedString:testString]);
    
    Employee *workingPerson = [[Employee alloc] init];
    [workingPerson setEmployeeNumber:@2112];
    
    NSLog(@"Employee ID is: %@", [workingPerson employeeNumber]);
   

}

@end
