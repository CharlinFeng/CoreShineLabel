//
//  CoreShineLabel.h
//  CoreShineLabel
//
//  Created by 冯成林 on 15/5/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "RQShineLabel.h"

@interface CoreShineLabel : RQShineLabel

/**
 *  实例化方法：含延时
 *
 *  @param frame frame
 *  @param delay 延时
 *  @param initShineCompleteBlock 初次完成shine回调
 *
 *  @return 实例
 */
-(instancetype)initWithFrame:(CGRect)frame shineDelay:(NSTimeInterval)delay initShineCompleteBlock:(void(^)())initShineCompleteBlock;

@end
