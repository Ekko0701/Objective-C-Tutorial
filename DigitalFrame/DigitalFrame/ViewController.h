//
//  ViewController.h
//  DigitalFrame
//
//  Created by Ekko on 2023/04/10.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction) toogleAction:(id) sender;
-(IBAction) changeSpeedAction: (id) sender;

@end

