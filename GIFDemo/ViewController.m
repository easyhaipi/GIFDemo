//
//  ViewController.m
//  GIFDemo
//
//  Created by hulinEasy on 2017/3/21.
//  Copyright © 2017年 easy. All rights reserved.
//SVProgressHUD和GIF的加载中的loading

#import "ViewController.h"
#import "SVProgressHUD.h"
#import "UIImage+GIF.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testAction:(id)sender {
    
    [SVProgressHUD setMinimumDismissTimeInterval:MAXFLOAT];
    //    [SVProgressHUD setInfoImage:[UIImage imageWithGIFNamed:@"huancun.gif"]];
    // 利用SVP提供类方法设置 通过UIImage分类方法返回的动态UIImage对象
    
    UIImage *image = [UIImage sd_animatedGIFNamed:@"progress_loading"];

    //要手动更改 iamgeView的frame  和 hud的frame
    [SVProgressHUD showImage:image status:nil];
//
    [SVProgressHUD setBackgroundColor:[UIColor clearColor]];
 
  
   
}

@end
