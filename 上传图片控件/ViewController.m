//
//  ViewController.m
//  上传图片控件
//
//  Created by 贾亚宁 on 2019/3/18.
//  Copyright © 2019年 贾亚宁. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "UploadViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"上传图片";
    
    // 1、添加两个按钮
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"只选择不上传" forState:normal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:normal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    btn1.backgroundColor = [UIColor blackColor];
    [btn1 addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.height.equalTo(@(50));
        make.width.equalTo(self.view.mas_width).multipliedBy(0.6);
        make.bottom.equalTo(self.view.mas_centerY).offset(-15);
    }];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"选择和上传" forState:normal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:normal];
    btn2.titleLabel.font = [UIFont systemFontOfSize:18 weight:UIFontWeightMedium];
    btn2.backgroundColor = [UIColor blackColor];
    [btn2 addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.height.equalTo(@(50));
        make.width.equalTo(self.view.mas_width).multipliedBy(0.6);
        make.top.equalTo(self.view.mas_centerY).offset(15);
    }];
}

- (void)buttonTap:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"选择和上传"]) {
        UploadViewController *upload = [[UploadViewController alloc] init];
        [self.navigationController pushViewController:upload animated:YES];
    }
}

@end
