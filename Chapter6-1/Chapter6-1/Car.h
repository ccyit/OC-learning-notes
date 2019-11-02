//
//  Car.h
//  Chapter6-1
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Engine, Tire;
@interface Car : NSObject
{
    @private
    Engine *engine;
    Tire *tires[4];
}

- (Engine *)engine;
- (void)setEngine:(Engine *)newEngine;
- (Tire *)tireAtIndex:(int)index;
- (void)setTire:(Tire *)tire atIndex:(int)index;
- (void)print;
@end

NS_ASSUME_NONNULL_END
