//
//  Vi.m
//  Share
//
//  Created by maple on 16/4/26.
//  Copyright © 2016年 maple. All rights reserved.
//

#import "MyView.h"
@implementation MyView
-(void)drawRect:(CGRect)rect{
     _bezierPath = [UIBezierPath bezierPath];
    [_bezierPath moveToPoint: CGPointMake(36.5, 27.5)];
    [_bezierPath addLineToPoint: CGPointMake(11.5, 65.5)];
    [_bezierPath addLineToPoint: CGPointMake(36.5, 97.5)];
    [_bezierPath addLineToPoint: CGPointMake(74.5, 65.5)];
    [_bezierPath addLineToPoint: CGPointMake(36.5, 27.5)];
    [_bezierPath addLineToPoint: CGPointMake(74.5, 40.5)];
    [_bezierPath addLineToPoint: CGPointMake(36.5, 27.5)];
    [_bezierPath closePath];
 //设置填充色
    [_fillColor setFill];
    [_bezierPath fill];
    //设置表面色
    [UIColor.blackColor setStroke];
    _bezierPath.lineWidth = 1;
    [_bezierPath stroke];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSSet *allTouches = [event allTouches];    //返回与当前接收者有关的所有的触摸对象
    UITouch *touch = [allTouches anyObject];   //视图中的所有对象
    CGPoint point = [touch locationInView:[touch view]]; //返回触摸点在视图中的当前坐标
    //判断点是否在指定的bezier内
    if ([self.bezierPath containsPoint:point])
    {
        if ([self.delegate respondsToSelector:@selector(myViewbeTouched)]) {
            [self.delegate myViewbeTouched];
        }
        self.fillColor = [UIColor redColor];
        [self setNeedsDisplay];
    }
}


@end
