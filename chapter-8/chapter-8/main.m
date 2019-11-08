//
//  main.m
//  chapter-8
//
//  Created by ccyag on 8/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Book *book1 = [[Book alloc] init];
        book1.author = @"Scott Knaster";
        book1.title = @"Objective-C基础教程（第2版）";
        book1.money = 59.00;
        book1.year = 2013;
        Book * book2 = [book1 copy];
        book2.title = @"Objective-C编程之道";
        [book1 addBook:book1];
        [book1 addBook:book1];
        [book1 addBook:book1];
        [book1 addBook:book1];

        NSLog(@"%@", book1.otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0].otherBooks[0]);
    }
    return 0;
}
