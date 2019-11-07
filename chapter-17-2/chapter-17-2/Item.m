//
//  Item.m
//  chapter-17-2
//
//  Created by ccyag on 7/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import "Item.h"

@implementation Item

@synthesize name,magicNumber,shoeSize, subThingies;

- (instancetype)initWithName:(NSString *)name magicNumber:(int)mn shoeSize:(float)ss{
    if (self = [super init]) {
        self.name = name;
        self.magicNumber = mn;
        self.shoeSize = ss;
        self.subThingies = [NSMutableArray array];
    }
    return self;
}
- (NSString*) description{
    return [NSString stringWithFormat:@"%@: %d/%.1f %@", name, magicNumber, shoeSize, subThingies];
}
- (void)encodeWithCoder:(NSCoder *)coder{
    [coder encodeObject:name forKey:@"name"];
    [coder encodeInt:magicNumber forKey:@"magicNumber"];
    [coder encodeFloat:shoeSize forKey: @"shoeSize"];
    [coder encodeObject:subThingies forKey:@"subThingies"];
}
- (instancetype)initWithCoder:(NSCoder *)decoder{
   
    if (self = [super init]){
        self.name = [decoder decodeObjectForKey:@"name"];
        self.magicNumber = [decoder decodeIntForKey:@"magicNumber"];
        self.shoeSize = [decoder decodeFloatForKey:@"shoeSize"];
        self.subThingies = [decoder decodeObjectOfClass:[NSMutableArray classForCoder] forKey:@"subThingies"];
    }
    return self;
}

+ (BOOL)supportsSecureCoding{
    return YES;
}

@end
