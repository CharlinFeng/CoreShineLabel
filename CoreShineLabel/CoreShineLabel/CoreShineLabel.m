//
//  CoreShineLabel.m
//  CoreShineLabel
//
//  Created by 冯成林 on 15/5/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CoreShineLabel.h"

@interface CoreShineLabel ()

/** 延时 */
@property (nonatomic,assign) NSTimeInterval delay;


@property (nonatomic,copy) void (^initShineCompleteBlock)();

@end


@implementation CoreShineLabel



/**
 *  实例化方法：含延时
 *
 *  @param frame frame
 *  @param delay 延时
 *  @param initShineCompleteBlock 初次完成shine回调
 *
 *  @return 实例
 */
-(instancetype)initWithFrame:(CGRect)frame shineDelay:(NSTimeInterval)delay initShineCompleteBlock:(void(^)())initShineCompleteBlock{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        //记录
        self.delay = delay;
        
        self.initShineCompleteBlock = initShineCompleteBlock;
        
        //视图准备
        [self viewPrepare];
    }
    
    return self;
}


-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        //视图准备
        [self viewPrepare];
    }
    
    return self;
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self=[super initWithCoder:aDecoder];
    
    if(self){
        
        //视图准备
        [self viewPrepare];
    }
    
    return self;
}



/*
 *  视图准备
 */
-(void)viewPrepare{
    
    //设置字体颜色
    self.textColor = [UIColor blackColor];
    
    //设置行数
    self.numberOfLines = 0;
    
    //自动开始
    if(_delay>0){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(_delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self shineWithCompletion:_initShineCompleteBlock];
        });
        
    }else{
       self.autoStart = YES;
    }
}



@end
