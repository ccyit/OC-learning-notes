//
//  Book.m
//  chapter-8
//
//  Created by ccyag on 8/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize author, money, title, year, otherBooks;


- (instancetype)init{
    if (self = [super init]) {
        otherBooks = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Book *bookCopy;
    bookCopy = [[[self class] allocWithZone:zone] init];
    bookCopy.author = author;
    bookCopy.money = money;
    bookCopy.otherBooks = [NSMutableArray arrayWithCapacity:4];
    for (id book in otherBooks){
        [bookCopy.otherBooks addObject:[book copy]];
    }
    bookCopy.title = title;
    return bookCopy;
}

- (void)addBook:(Book *)book{
    if ([otherBooks count] > 10) {
        return;
    }
    [otherBooks addObject:book];
}


@end
