//
//  MementoCenter.m
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+(void)saveMementoObject:(id<MementoCenterProtocol>)object withkey:(NSString *)key
{
    NSParameterAssert(object);
    NSParameterAssert(key);
    
    //获取data
    id data         = [object currentState];
    
    NSData *tmpData = [FastCoder dataWithRootObject:data];
    
    if (tmpData) {
        [[NSUserDefaults standardUserDefaults] setObject:tmpData
                                                  forKey:key];
    }

}

+(id)mementoObjectWithKey:(NSString *)key
{
    NSParameterAssert(key);
    
    id data = nil;
    NSData *tmpData = [[NSUserDefaults standardUserDefaults] objectForKey:key];

    if (tmpData) {
        data = [FastCoder objectWithData:tmpData];
    }
    
    return data;
}

@end
