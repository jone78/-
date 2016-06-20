//
//  MementoCenterProtocol.h
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterProtocol <NSObject>

@required
/**
 *  获取
 *
 *  @return State
 */
-(id)currentState;

/**
 *  恢复
 *
 *  @param state
 */
-(void)recoverFormState:(id)state;

@end
