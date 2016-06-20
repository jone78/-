//
//  MementoCenter.h
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

@interface MementoCenter : NSObject

/**
 *  save
 *
 *  @param object
 *  @param key
 */
+(void)saveMementoObject:(id<MementoCenterProtocol>)object withkey:(NSString *)key;

/**
 *  get object
 *
 *  @param key
 *
 *  @return
 */
+(id)mementoObjectWithKey:(NSString *)key;

@end
