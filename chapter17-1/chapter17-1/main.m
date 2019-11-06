//
//  main.m
//  chapter17-1
//
//  Created by ccyag on 6/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        NSDate *date = [NSDate date];
        NSLog(@"today is %@", date);
        NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-(24 * 60 * 60)];
        NSLog(@"yesterday is %@", yesterday);
        
        
    }
    return 0;
}
