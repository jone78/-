//
//  NSObject+MementoCenter.m
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import "NSObject+MementoCenter.h"

@implementation NSObject (MementoCenter)

-(void)saveStateWithKey:(NSString *)key
{
    id <MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withkey:key];
    }
}

-(void)recoverFormStateWithKey:(NSString *)key
{
    id state =[MementoCenter mementoObjectWithKey:key];
    id <MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    
    if ([obj respondsToSelector:@selector(recoverFormStateWithKey:)]) {
        [obj recoverFormState:state];
    }
}

@end
