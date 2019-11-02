//
//  main.m
//  Chapter-5-1
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//
#import <Foundation/Foundation.h>

//Tire
@interface Tire : NSObject
@end

@implementation Tire

- (NSString *)description{
    return @"I am a tire, I last a while";
}

@end


//Engine
@interface Engine : NSObject
@end

@implementation Engine

- (NSString *)description{
    return @"I am an Engine, Vrooom!";
}

@end


//Car

@interface Car : NSObject
{
    @private
    Engine *engine;
    Tire *tires[4];
}

- (void)print;
@end

@implementation Car

- (id)init{
    if (self = [super init]) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return self;
}

- (void)print{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        Car *car = [Car new];
        [car print];
    }
    return 0;
}
