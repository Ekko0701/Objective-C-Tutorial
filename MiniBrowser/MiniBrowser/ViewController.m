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
@synthesize mainWebView,urlTextField,bookmarkSegmentedControl, activityIndicatorView;
- (void)viewDidLoad {
    [super viewDidLoad];
    mainWebView.navigationDelegate = self;
    NSString *urlString = @"https://www.facebook.com";
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *urlString = urlTextField.text;
    
    if(![urlString hasPrefix:@"http://"]) {
        urlString = [[NSString alloc]initWithFormat:@"https://%@", urlString];
    }
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
   
    return YES;
}

- (IBAction)refreshAction:(id)sender {
    [mainWebView reload];
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)forwardAction:(id)sender {
    [mainWebView goForward];
}

- (IBAction)backAction:(id)sender {
    [mainWebView goBack];
}

- (IBAction)bookmarkAction:(id)sender {
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex: bookmarkSegmentedControl.selectedSegmentIndex];
    NSString *urlString = [[NSString alloc]initWithFormat:@"https://www.%@.com",bookmarkURL];
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
    
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    [activityIndicatorView startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [activityIndicatorView stopAnimating];
}

@end
