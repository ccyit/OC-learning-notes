//
//  main.m
//  Chapter-8-3
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSRect rect = {10, 20, 30, 40};
        NSValue *value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:2];
        [array addObject:value];
        
        value = array[0];
        
        NSRect rect2;
        [value getValue:&rect2];
        NSLog(@"%.2f %.2f %.2f %.2f", rect2.origin.x, rect2.origin.y, rect2.size.width, rect2.size.height);
        
        [array addObject:[NSNull null]];
        NSLog(@"%@", array);
    }
    return 0;
}
