//
//  NSObject+MementoCenter.h
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenter.h"

@interface NSObject (MementoCenter)

/**
 *  存储状态
 *
 *  @param key 
 */
-(void)saveStateWithKey:(NSString *)key;


/**
 *  恢复状态
 *
 *  @param key
 */
-(void)recoverFormStateWithKey:(NSString *)key;

@end
