//
//  main.m
//  Chaper-8-0
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSRange range;
        range.length = 4;
        range.location = 17;
        NSRange range1 = {17, 4};
        __unused NSRange range2 = NSMakeRange(17, 4);
        NSLog(@"%lu %lu", (unsigned long)range1.location, (unsigned long)range1.length);
        
        //
        CGPoint point = CGPointMake(0, 0);
        CGSize size = CGSizeMake(100, 100);
        CGRect rect;
        rect.origin = point;
        rect.size = size;
        
        NSLog(@"%.2f %.2f %.2f %.2f", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    }
    return 0;
}
