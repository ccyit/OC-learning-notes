//
//  main.m
//  Chapter-8-2
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //数组中可以存放字符串，数字，其他数组，字典等数据。
        NSArray *array = @[@"one", @"two", @3,@[@"four", @"five"],@{@"firstName":@"Chen",@"LastName":@"ChenChen"}];
        
        NSLog(@"%@ \n%lu", array, array.count);
        NSLog(@"%@", array[10]);
    }
    return 0;
}
