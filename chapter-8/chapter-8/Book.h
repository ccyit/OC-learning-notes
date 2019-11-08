//
//  Book.h
//  chapter-8
//
//  Created by ccyag on 8/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject<NSCopying>

@property (copy) NSString *author;
@property float money;
@property (copy) NSString *title;
@property int year;
@property (retain) NSMutableArray<Book *> *otherBooks;

- (void)addBook:(Book *)book;
@end

NS_ASSUME_NONNULL_END
