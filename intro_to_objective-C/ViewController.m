//
//  ViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSString+StringOps.h"
#import "Employee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    [workingPerson setEmployeeNumber:2112];
    
    NSLog(@"Employee ID is: %d", [workingPerson employeeNumber]);
   

}

@end
