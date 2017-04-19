//
//  AddEmployeeViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/19/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController ()
@property (strong, nonatomic) IBOutlet UIView *addEmployeeView;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *employeeTextFields;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)savePressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)cancelPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
