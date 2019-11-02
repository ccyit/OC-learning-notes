//
//  main.m
//  Chapter-8-1
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        NSString *height;
        
        height = [NSString stringWithFormat:@"Your height is %d feet, %d inches.", 5, 11];
        NSLog(@"%@", height);
        NSUInteger length = [height length];
        NSLog(@"length = %lu", length);
        if (length > 22) {
            NSLog(@"Wow, you're really tall!");
        }
        
        //字符串比较
        NSString *string1 = @"hello 5";
        NSString *string2 = [NSString stringWithFormat:@"hello %d", 5];
        if ([string1 isEqualToString:string2]) {
            NSLog(@"They are the same.");
        }
        
        NSComparisonResult result = [string1 compare:string2];
        
        NSLog(@"%ld", result);
        string1 = @"book";
        string2 = @"Book";
        //NSComparisonResult result2 = [string1 compare:string2 options:(NSCaseInsensitiveSearch | NSNumericSearch)];
        
        NSComparisonResult result2 = [string1 compare:string2 options:(NSLiteralSearch | NSNumericSearch)];

        NSLog(@"%ld", result2);

        //
        string1 = @"CYC-Hello.mov";
        BOOL hasCYCPrefis = [string1 hasPrefix:@"CYC"];
        
        BOOL hasMovSuffix = [string1 hasSuffix:@"mov"];
        
        if (hasCYCPrefis && hasMovSuffix) {
            NSLog(@"Bing Go!");
        }
        //
        string1 = @"chapter-8-1";
        NSRange range0 = [string1 rangeOfString:@"-"];
        
        NSLog(@"location %lu", range0.location);
        
        //
        NSMutableString *string = [NSMutableString stringWithCapacity:42];
        
        [string appendString:string1];
        [string appendFormat:@"&%@", string1];
        
        NSLog(@"string = %@", string);
        
        NSRange range = [string rangeOfString:@"-"];
        while (range.location != NSNotFound) {

            [string deleteCharactersInRange:range];
            range = [string rangeOfString:@"-"];
        }
        NSLog(@"string = %@", string);
        
        

        
    }
    return 0;
}
