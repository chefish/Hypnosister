//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by 余晓敏 on 2018/4/26.
//  Copyright © 2018年 fish. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [UIBezierPath new];
    //以中心点为圆心，radius为半径，定义一个0-2pi的圆
    [path addArcWithCenter:center radius:radius startAngle:0 endAngle:M_PI*2 clockwise:YES];
    
//    for (float currentRadius = radius; currentRadius>0; currentRadius-=20) {
//        [path addArcWithCenter:center radius:currentRadius startAngle:0 endAngle:M_PI*2 clockwise:YES];
//    }
    
    path.lineWidth = 10;
    //设置绘制颜色为浅灰色
    [[UIColor lightGrayColor] setStroke];
    //绘制路径
    [path stroke];
}

@end
