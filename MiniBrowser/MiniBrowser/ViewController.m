//
//  ViewController.m
//  MiniBrowser
//
//  Created by Ekko on 2023/04/11.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView,urlTextField,bookmarkSegmentedControl;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"https://www.facebook.com";
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
}

@end
