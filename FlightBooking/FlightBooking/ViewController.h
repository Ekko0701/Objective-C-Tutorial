//
//  ViewController.h
//  FlightBooking
//
//  Created by Ekko on 2023/04/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate> {
    NSInteger buttonTag;
}

@property (weak, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (weak, nonatomic) IBOutlet UIButton *returnDateButton;
@property (weak, nonatomic) IBOutlet UIButton *departureDateButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *selectDatePicker;
- (IBAction)showReturnDateAction:(id)sender;
- (IBAction)showDataPickerAction:(id)sender;
- (IBAction)selectDateAction:(id)sender;

@end

