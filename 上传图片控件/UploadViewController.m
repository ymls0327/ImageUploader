//
//  UploadViewController.m
//  上传图片控件
//
//  Created by 贾亚宁 on 2019/5/16.
//  Copyright © 2019 贾亚宁. All rights reserved.
//

#import "UploadViewController.h"
#import "YNImageUploadView.h"
#import <Masonry.h>

@interface UploadViewController ()

@end

@implementation UploadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"上传图片";
    self.view.backgroundColor = [UIColor whiteColor];
    
    __weak typeof(self)weakSelf = self;
    YNImageUploadView *imageView = [[YNImageUploadView alloc] initWithConfig:^(YNImageUploadViewConfig * _Nonnull config) {
        config.insets = UIEdgeInsetsMake(5, 10, 5, 10);
        config.scale = 1;
        config.autoHeight = YES;
        config.isNeedUpload = YES;
        config.uploadUrl = @"你的上传链接";
        config.parameter = @{@"parameter" : @"这里是你的参数"};
        
//        [config setUploadViewShowImageWithType:YNImageUploadImageTypeImageUrl contents:@[@"http://img0.imgtn.bdimg.com/it/u=1415158042,3021649704&fm=26&gp=0.jpg",@"http://img0.imgtn.bdimg.com/it/u=1415158042,3021649704&fm=26&gp=0.jpg",@"http://img0.imgtn.bdimg.com/it/u=1415158042,3021649704&fm=26&gp=0.jpg"]];
    }];
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top).offset([UIApplication sharedApplication].statusBarFrame.size.height == 44 ? 88 : 64);
        make.left.right.equalTo(weakSelf.view);
        make.height.equalTo(@(100));
    }];
}

- (void)dealloc {
    NSLog(@"销毁了");
}
@end
