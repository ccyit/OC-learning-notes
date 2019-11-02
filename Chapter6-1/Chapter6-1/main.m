//
//  main.m
//  Chapter6-1
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        Car *car = [Car new];
        for (int i = 0; i < 4; i++) {
            Tire *tire = [AllWeatherRadial new];
            [car setTire:tire atIndex:i];
        }
        
        Engine *engine = [Slant6 new];
        [car setEngine:engine];
        
        [car print];
    }
    return 0;
}
