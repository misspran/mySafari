//
//  ViewController.m
//  mySafari
//
//  Created by Vi on 10/1/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () < UIWebViewDelegate, UITextFieldDelegate >

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;


@end

@implementation ViewController

-(BOOL)textFieldShouldReturn:(UITextField *)urltextField {
    NSString *urlString = urltextField.text;
    NSURL *url =[NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
    return YES;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
