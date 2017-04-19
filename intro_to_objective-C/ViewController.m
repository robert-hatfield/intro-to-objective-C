//
//  ViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "ViewController.h"
#import "EmployeeDatabase.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Assign this controller as the tableView's data source
    self.tableView.dataSource = self;
    
    // Log contents of singleton
    NSLog(@"All Employees:%@", [[EmployeeDatabase shared] allEmployees]);
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
