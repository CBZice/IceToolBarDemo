//
//  IceImageViewVC.m
//  IceToolBarClass
//
//  Created by cooptec on 2017/4/28.
//  Copyright © 2017年 hanyemufeng_yyc. All rights reserved.
//

#import "IceImageViewVC.h"
#import "IceImageView.h"
@interface IceImageViewVC ()<IceImageViewDelegate>

@end

@implementation IceImageViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    IceImageView *imgView = [[IceImageView alloc] init];
    imgView.frame = CGRectMake(100, 100, 100, 100);
    imgView.openLongPressGes = NO;
    imgView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:imgView];
    
    IceImageView *imgView2 = [[IceImageView alloc] init];
    imgView2.frame = CGRectMake(20, 500, 50, 50);
    imgView2.image = [UIImage imageNamed:@"1.jpg"];
    imgView2.delegate = self;
    imgView2.openTapGes = NO;
    [self.view addSubview:imgView2];
}

-(void)imageView:(UIImageView *)imageView LongPressGesState:(UIGestureRecognizerState)state {
    if (state == UIGestureRecognizerStateBegan) {
        NSLog(@"long pressTap state :began");
    }else {
        NSLog(@"long pressTap state :ended");
    };
}

@end
