//
//  ViewController.m
//  FSWindowSample
//
//  Created by FudonFuchina on 2018/11/24.
//  Copyright © 2018年 FudonFuchina. All rights reserved.
//

#import "ViewController.h"
#import "FSWindow.h"

@interface ViewController ()

@end

@implementation ViewController{
    UITextField *_t;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    b.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 40);
    b.backgroundColor = UIColor.redColor;
    [b setTitle:@"click" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
    UITextField *t = [[UITextField alloc] initWithFrame:CGRectMake(10, 30, self.view.frame.size.width - 20, 30)];
    t.backgroundColor = UIColor.blueColor;
    t.placeholder = @"input";
    [self.view addSubview:t];
    _t = t;
}

- (void)click{
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height - 210)];
    v.backgroundColor = UIColor.blueColor;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [v addGestureRecognizer:tap];
    
    [FSWindow showView:v];
}

- (void)tap{
    [FSWindow dismiss];
    [_t becomeFirstResponder];
}

@end
