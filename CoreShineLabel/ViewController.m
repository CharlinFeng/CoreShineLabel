//
//  ViewController.m
//  CoreShineLabel
//
//  Created by 冯成林 on 15/5/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreShineLabel.h"

@interface ViewController ()

@property (nonatomic,weak) CoreShineLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CoreShineLabel *label = [[CoreShineLabel alloc] initWithFrame:CGRectMake(0, 0, 300, 300) shineDelay:5.0f initShineCompleteBlock:^{
        
        NSLog(@"完成");
    }];
    
    _label = label;
    
    label.text = @"我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字我是文字";
    
    [self.view addSubview:label];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_label fadeOut];
}

@end
