//
//  ViewController.m
//  RunTimeTest
//
//  Created by yaoqi on 17/2/17.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Message *message = [Message new];
    [message sendMessage:@"hello run time"];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
