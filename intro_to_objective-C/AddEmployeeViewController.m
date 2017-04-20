//
//  AddEmployeeViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/19/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"

@interface AddEmployeeViewController ()

@property (strong, nonatomic) IBOutlet UIView *addEmployeeView;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *managerName;
@property (weak, nonatomic) IBOutlet UITextField *emailAddress;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployed;
@property (weak, nonatomic) IBOutlet UITextField *employeeAge;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)savePressed:(UIButton *)sender {
    
    // Confirm only numbers are in year fields
    if ([self inputIsValidFor:_yearsEmployed] && [self inputIsValidFor:_employeeAge]) {
        [self.view endEditing:YES];
        [self dismissViewControllerAnimated:true completion:nil];
    };
}

- (IBAction)cancelPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (BOOL)inputIsValidFor:(UITextField *)textField {
    NSString *decimalNumberPattern = @"^\\d+(\\.\\d+)?$";
    NSString *input= textField.text;
    NSRange patternRange = [input rangeOfString:decimalNumberPattern
                                        options:NSRegularExpressionSearch];
    
    if (patternRange.location != NSNotFound) {
        NSLog(@"Input is a valid number.");
        textField.textColor = [UIColor blackColor];
        return YES;
    } else {
        if ([input isEqual: @""]) {
            NSLog(@"No text entered, setting to zero.");
            textField.text = @"0";
            return YES;
        }
        NSLog(@"Input is not a number.");
        textField.textColor = [UIColor redColor];
        return NO;
    }
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
