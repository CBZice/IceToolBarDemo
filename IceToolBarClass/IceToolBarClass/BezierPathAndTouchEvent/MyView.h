//
//  Vi.h
//  Share
//
//  Created by maple on 16/4/26.
//  Copyright © 2016年 maple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyView;
@protocol MyViewDelegate <NSObject>

- (void)myViewbeTouched;

@end

@interface MyView : UIView
@property (nonatomic ,strong) UIBezierPath* bezierPath;
@property (nonatomic, strong) UIColor *fillColor;

/*** delegate **/
@property (assign, nonatomic) id<MyViewDelegate> delegate;

@end
