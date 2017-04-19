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

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Assign this controller as the tableView's delegate and data source
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Create a new Employee and add it to the database.
    Employee *robertEmployee = [[Employee alloc]initWithFirstName:@"Robert" lastName:@"Hatfield" age:@40 email:@"robert@lucidthought.xyz" yearsEmployed:@3 andManager:@"Esequiel"];
    [[EmployeeDatabase shared] add:robertEmployee];
    
    // Copy first Employee, modify it, and add it to the database.
    Employee *imposterEmployee = [robertEmployee copy];
    imposterEmployee.firstName = @"Roberto";
    imposterEmployee.lastName = @"McCoy";
    imposterEmployee.email = @"robertmccoy@aol.com";
    [[EmployeeDatabase shared] add:imposterEmployee];

}

//MARK: Implement TableViewDataSource methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[EmployeeDatabase shared] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    int index = (int)indexPath.row;
    Employee *employee = [[EmployeeDatabase shared] employeeAtIndex:index];
    
    NSString *fullName = [NSString stringWithFormat: @"%@ %@", employee.firstName, employee.lastName];
    cell.textLabel.text = fullName;
    return cell;
}

@end
