//
//  ViewController.m
//  ConstStaticExternDome
//
//  Created by IOS on 2018/3/1.
//  Copyright © 2018年 IOS. All rights reserved.
//

#import "ViewController.h"

// 全局变量：只有一份内存，所有文件共享，与extern联合使用。
int bb = 20000;
NSString *str = @"12222";

//static修饰全局变量, 该变量的作用域就被限制在本文件中。
// 开发中常用static修饰全局变量,只改变作用域
// 为什么要改变全局变量作用域，防止重复声明全局变量。
static int aa = 10000;

// 开发中声明的全局变量，有些不希望外界改动，只允许读取。
const int cc = 30000;

// iOS中staic和const常用使用场景，是用来代替宏，把一个经常使用的字符串常量，定义成静态全局只读变量.
// 开发中经常拿到key修改值，因此用const修饰key,表示key只读，不允许修改。
static const int dd = 40000;
static NSString * const key0 = @"200000";
static NSString const * key1 = @"300000";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //第一个例子：当const用来修饰基本数据类型时
//    //定义变量
//    int a = 100;
//    float const b = 100.00;
//    const double c= 200.00;
//    //typedef float CGFloat;// 32-bit
//    //typedef double CGFloat;// 64-bit
//    CGFloat d = 300.00;
//    //允许修改值
//    a = 2000;
//    //不允许修改值
//    b = 20000;
//    //不允许修改值
//    c = 200000;
//
//    // const:修饰指针变量*p，带*的变量，就是指针变量.
//    // 定义一个指向int类型的指针变量，指向a的地址
//    int *p = &a;
//    const float *p1 = &b;
//    double const *p2 = &c;
//    CGFloat * const p3 = &d;
//    int cc = 10;
//    //允许修改值
//    p = &cc;
//    //允许修改值
//    p1 = &b;
//    //不允许修改值
//    *p1 = 200;
//    //允许修改值
//    p2 = &c;
//    //不允许修改值
//    *p2 = 200.00;
//    //不允许修改值
//    p3 = &d;
//    //允许修改值
//    *p3 = 2.00;
//
//    //两个const
//    const int * const p4 = &a;
//    int const * const p5 = &a;
//    //不允许修改值
//    p4 = &a;
//    //不允许修改值
//    *p4 = 12;
//    //不允许修改值
//    p5 = &a;
//    //不允许修改值
//    *p5 = 24;
//
//    //第二个例子OC对象
//    NSString *str0 = @"const";
//    const NSArray * array = @[@"1",@"2"];
//    NSDictionary const *dic = @{@"name":@"xiaoQian"};
//    NSNumber * const num = @100;
//    //允许修改值
//    str0 = @"CONST";
//    //允许修改值
//    array = @[@"3",@"4"];
//    //不允许修改值
//    *array = &array;
//    //允许修改值
//    dic = @{@"age":@"20"}
//    //不允许修改值
//    *dic = &dic;
//    //不允许修改值
//    num = @121;
//    //不允许修改值
//    *num = &num;
//    const NSMutableArray * array1 = [NSMutableArray arrayWithArray:@[@"1",@"2"]];
//    NSMutableDictionary const *dic1 = [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"xiaoQian"}];
//    NSMutableString * const str1 = [NSMutableString stringWithString:@"const"];
//    //允许修改值
//    [array1 addObject:@"44"];
//    array1 = [NSMutableArray arrayWithArray:@[@"3",@"4"]];
//    //不允许修改值
//    *array1 = &array1;
//    //不允许修改值
//    [dic1 setObject:@"222" forKey:@"classNum"];
//    dic1 = [NSMutableDictionary dictionaryWithDictionary:@{@"name":@"xiaoQian"}];
//    //不允许修改值
//    *dic1 = &dic1;
//    //不允许修改值
//    str1 = @"static";
//    //不允许修改值
//    *str1 = &*str1;
    
    //被修饰的变量变成了只读的，但它并没有修改变量的作用域。
    
    
    //static和extern
    //static作用:
    //修饰局部变量：
        //1.延长局部变量的生命周期,程序结束才会销毁。
        //2.局部变量只会生成一份内存,只会初始化一次。
        //3.改变局部变量的作用域。
    //修饰全局变量
        //1.只能在本文件中访问,修改全局变量的作用域,生命周期不会改
        //2.避免重复定义全局变量
    
    //extern作用:
        //只是用来获取全局变量(包括全局静态变量)的值，不能用于定义变量
    //extern工作原理:
        //先在当前文件查找有没有全局变量，没有找到，才会去其他文件查找。
    
    aa = 10;
    //正常打印
    NSLog(@"%d",aa);
    bb = 20;
    //正常打印
    NSLog(@"%d",bb);
    str = @"extern";
    //正常打印
    NSLog(@"%@",str);
    
    
    //联合使用
//    //报错，不可更改
//    cc = 30;
    NSLog(@"%d",cc);
//    //报错，不可更改
//    dd = 40;
    NSLog(@"%d",dd);
}



@end
