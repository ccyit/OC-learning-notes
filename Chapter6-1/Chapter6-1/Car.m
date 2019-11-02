//
//  Car.m
//  Chapter6-1
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car
//- (id)init{
//    if (self = [super init]) {
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return self;
//}
//
- (Engine *)engine{
    return engine;
}

//
- (void)setEngine:(Engine *)newEngine{
    engine = newEngine;
}

//
- (Tire *)tireAtIndex:(int)index{
    if (index < 0 || index > 3) {
        NSLog(@"Bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    return tires[index];
}

- (void)setTire:(Tire *)tire atIndex:(int)index{
    if (index < 0 || index > 3) {
        NSLog(@"Bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    tires[index] = tire;
}

- (void)print{
//    NSLog(@"%@", tires[0]);
//    NSLog(@"%@", tires[1]);
//    NSLog(@"%@", tires[2]);
//    NSLog(@"%@", tires[3]);
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@", [self tireAtIndex:i]);
    }
    NSLog(@"%@", engine);
}
@end
