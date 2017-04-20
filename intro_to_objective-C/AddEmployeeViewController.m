//
//  AddEmployeeViewController.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/19/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#define COLOR_HINT_YELLOW colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.2

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
    

    
    // Stop if minimum fields (first & last name) are not completed
    if ([_firstName.text isEqual: @""] || [_lastName.text isEqual: @""]) {
        
        if ([_firstName.text isEqual:@""]) {
            NSLog(@"No text");
            [_firstName setBackgroundColor:[UIColor COLOR_HINT_YELLOW]];
        } else {
            [_firstName setBackgroundColor:[UIColor whiteColor]];
        }
        
        if ([_lastName.text isEqual:@""]) {
            NSLog(@"No text");
            [_lastName setBackgroundColor:[UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.2]];
        } else {
            [_lastName setBackgroundColor:[UIColor whiteColor]];
        }
        return;
    }
    
    // Stop if year fields do not have valid numbers
    if (![self inputIsValidFor:_yearsEmployed] || ![self inputIsValidFor:_employeeAge]) {
        return;
    };
    
    Employee *newEmployee = [[Employee alloc]initWithFirstName:_firstName.text lastName:_lastName.text age:[NSNumber numberWithFloat:[_employeeAge.text floatValue]] email:_emailAddress.text yearsEmployed:[NSNumber numberWithFloat:[_yearsEmployed.text floatValue]] andManager:_managerName.text];
    [[EmployeeDatabase shared] add:newEmployee];
    
    [self.view endEditing:YES];
    [self dismissViewControllerAnimated:true completion:nil];

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
            textField.textColor = [UIColor blackColor];
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
