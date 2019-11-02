//
//  main.m
//  Chapter-8-4
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        
        NSFileManager *manager = [NSFileManager defaultManager];
        NSString *home = [@"~" stringByExpandingTildeInPath];
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
        for (NSString *fileName in [manager enumeratorAtPath:home]) {
            if ([[fileName pathExtension] isEqualToString:@"pdf"] || [[fileName pathExtension] isEqualToString:@"mobi"]) {
                [files addObject:fileName];
            }
        }
        for (NSString *fileName in files) {
            NSLog(@"%@", fileName);
        }
    }
    return 0;
}
