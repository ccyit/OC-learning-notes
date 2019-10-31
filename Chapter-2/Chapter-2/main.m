//
//  main.m
//  Chapter-2
//
//  Created by ccyag on 31/10/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

//判断两个数字是否不相等
BOOL areIntsDifferent(int number1, int number2){
    if (number1 != number2) {
        return YES;
    } else {
        return NO;
    }
}

//根据BOOL值返回对应的f字符串。
NSString *boolString(BOOL yesNo){
    if (yesNo == YES) {
        return @"YES";
    } else {
        return @"NO";
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        BOOL areTheyDifferent = areIntsDifferent(5, 5);
        NSLog(@"Are %d and %d different? %@", 5, 5, boolString(areTheyDifferent));
        areTheyDifferent = areIntsDifferent(23, 45);
        NSLog(@"Are %d and %d different? %@", 23, 45, boolString(areTheyDifferent));
    }
    return 0;
}
