//
//  WithoutNavTestViewController.m
//  JLHideNavigationBarDemo
//
//  Created by 王俊岭 on 2020/3/20.
//  Copyright © 2020 王俊岭. All rights reserved.
//

#import "WithoutNavTestViewController.h"
#import "WithNavTestViewController.h"

#import "UIViewController+JLHideNavigationBar.h"

@implementation WithoutNavTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.jl_isHideNavBar = YES;
    self.view.backgroundColor = [UIColor whiteColor];
  
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    imageView.backgroundColor = [UIColor blueColor];
  
    [self.view addSubview:imageView];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    [self.view addSubview:btn1];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)test {
    
    WithoutNavTestViewController *vc = [[WithoutNavTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
    
    
    
}

- (void)test1 {
    WithNavTestViewController *vc = [WithNavTestViewController new];
    
    [self.navigationController pushViewController:vc animated:true];
}

@end
