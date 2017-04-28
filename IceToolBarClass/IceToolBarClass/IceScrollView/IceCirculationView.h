//  IceCirculationView.h

//  IceScrollView

//
//  Created by ice on 16/8/22.
//  Copyright © 2016年 ice. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IceCirculationView;

@protocol IceCirculationViewDelegate <NSObject>

@optional
/**
 用于获取当前是哪张图片(从0开始计数)，可添加点击事件
 */

- (void)iceCirculationView:(IceCirculationView *)circulationView whichPicureBeChanged:(NSInteger)index;

@end

@interface IceCirculationView : UIView

/**
 分页控制器
 */
@property (nonatomic, strong) UIPageControl *pageControl;
/**
 占位图
 */
@property (nonatomic, copy) NSString *placeHolder;
/**
 界面停留时间,默认1.5s
 */
@property (nonatomic, assign) CGFloat animationDelay;
/**
 当前页数
 */
@property (nonatomic, assign) NSInteger currectPage;
/**
 初始化方法，在imageArr，可以放入本地图片与网络图片俩中
 */
-(instancetype)initWithFrame:(CGRect)frame Images:(NSArray *)imageArr;

@property (nonatomic, weak) id<IceCirculationViewDelegate> delegate;

@end
