//
//  SecondViewController.h
//  TabBar_Tutorial
//
//  Created by Ekko on 2023/04/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
- (IBAction)secondAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

NS_ASSUME_NONNULL_END
