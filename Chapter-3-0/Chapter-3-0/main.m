//
//  main.m
//  Chapter-3-0
//
//  Created by ccyag on 31/10/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        int count = 10;//100
        NSLog(@"The numbers from 1 to %d:", count);
        for (int i = 1; i <= count; i++) {
            NSLog(@"%d", i);
        }
    }
    return 0;
}
