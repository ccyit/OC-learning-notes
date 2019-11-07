//
//  Item.h
//  chapter-17-2
//
//  Created by ccyag on 7/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject<NSCoding,NSSecureCoding>

@property(copy) NSString *name;
@property int magicNumber;
@property float shoeSize;
@property NSMutableArray *subThingies;

- (instancetype)initWithName:(NSString *)name magicNumber:(int)mn shoeSize:(float)ss;

@end

NS_ASSUME_NONNULL_END
