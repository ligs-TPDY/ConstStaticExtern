//
//  ExternViewController.m
//  ConstStaticExternDome
//
//  Created by IOS on 2018/3/1.
//  Copyright © 2018年 IOS. All rights reserved.
//

#import "ExternViewController.h"

@interface ExternViewController ()

@end

@implementation ExternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //正常打印
    extern int bb;
    NSLog(@"%d",bb);
    //正常打印
    extern NSString *str;
    NSLog(@"%@",str);
    
//        //报错
//        extern int aa;
//        NSLog(@"%d",aa);
    
    //正常打印
    extern int cc;
    NSLog(@"%d",cc);
//    //报错
//    extern int dd;
//    NSLog(@"%d",dd);
    
}


@end
