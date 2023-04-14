//
//  ViewController.m
//  DigitalFrame
//
//  Created by Ekko on 2023/04/10.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, toggleButton, speedSlider, speedLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cuteImages = [[NSArray alloc]initWithObjects:
                           [UIImage imageNamed: @"1.jpeg"],
                           [UIImage imageNamed: @"2.jpeg"],
                           [UIImage imageNamed: @"3.JPG"],
                           [UIImage imageNamed: @"img4.jpeg"],
                           [UIImage imageNamed: @"img5.jpeg"],
                           [UIImage imageNamed: @"img6.JPG"],
                           [UIImage imageNamed: @"img7.jpeg"],
                           [UIImage imageNamed: @"img8.jpeg"],
                           [UIImage imageNamed: @"img9.JPG"],
                           [UIImage imageNamed: @"img10.jpeg"],
                           nil];
    imgView.animationImages = cuteImages;
    imgView.animationDuration = 10.0;
    imgView.animationRepeatCount = 0;
}

-(IBAction) toogleAction:(id) sender {
    if (imgView.animating) {
        [imgView stopAnimating];
        [toggleButton setTitle:@"start" forState:UIControlStateNormal];
    } else {
        [imgView startAnimating];
        [toggleButton setTitle:@"stop" forState:UIControlStateNormal];
    }
}

-(IBAction) changeSpeedAction:(id)sender {
    imgView.animationDuration = speedSlider.value;
    [imgView startAnimating];
    [toggleButton setTitle:@"stop" forState:UIControlStateNormal];
    NSString *str = [[NSString alloc] initWithFormat:@"%f",speedSlider.value];
    speedLabel.text = str;
}

@end
