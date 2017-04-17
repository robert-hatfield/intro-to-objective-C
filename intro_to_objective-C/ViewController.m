//
//  ViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *robert = [[Person alloc] init];
    [robert setName:@"Robert"];
    
    NSString *personName = [robert name];
    
    [robert walk];
    
    [Person sayHello];
}


@end
