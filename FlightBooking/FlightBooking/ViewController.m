//
//  ViewController.m
//  FlightBooking
//
//  Created by Ekko on 2023/04/14.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel, returnDateButton, selectDatePicker, departureDateButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    buttonTag = 0;
    returnDateLabel.hidden = true;
    returnDateButton.hidden = true;
    selectDatePicker.hidden = true;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:true];
    selectDatePicker.hidden = true;
}

- (IBAction)showReturnDateAction:(id)sender {
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (IBAction)selectDateAction:(id)sender {
    NSDate *today = [[NSDate alloc]init];
    NSLog(@"today: %@", today);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-d hh:mma";
    
    NSString *dateString = [formatter stringFromDate:[sender date]];
    
    if (buttonTag == 1) {
        [departureDateButton setTitle:dateString forState:UIControlStateNormal];
    } else {
        [returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
    
}

- (IBAction)showDataPickerAction:(id)sender {
    selectDatePicker.hidden = false;
    buttonTag = [sender tag];
}
@end
