//
//  ViewController.m
//  备忘录模式
//
//  Created by 丁 一 on 16/6/7.
//  Copyright © 2016年 jone. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+MementoCenter.h"
#import "Apple.h"
#import "MementoCenter.h"
#import "model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    NSMutableArray *array1 = [[NSMutableArray alloc] init];
    int j=0;
    for (int i=0; i<4; i++) {
        model *mode=[[model alloc] init];
        if (j==0) {
            mode.my_info=@"welcome";
            mode.my_logo=@"herer";
        }
        else if (j==2)
        {
            mode.my_info=@"wo are good";
            mode.my_logo=@"hahaha";
        }
        else
        {
            mode.my_info=@"china is big";
            mode.my_logo=@"usa ok";
        }
        [array1 addObject:mode];
        j++;
    }
    
    
    Apple *apple=[[Apple alloc] init];
    //apple.name=array1;
    
    //[apple saveStateWithKey:@"Apple"];
    [apple recoverFormStateWithKey:@"Apple"];
    
    for (model *modse in apple.name) {
        NSLog(@"%@==%@",modse.my_info,modse.my_logo);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
