//
//  Apple.m
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import "Apple.h"

@implementation Apple

/**
 *  获取
 *
 *  @return State
 */
-(id)currentState
{
    return @{@"name":self.name};
}

/**
 *  恢复
 *
 *  @param state
 */
-(void)recoverFormState:(id)state
{
    NSDictionary *data=state;
    
    self.name=[data[@"name"] mutableCopy];
}


@end
