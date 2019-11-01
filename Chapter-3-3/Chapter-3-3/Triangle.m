//
//  Triangle.m
//  Chapter-3-3
//
//  Created by ccyag on 1/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

- (void)setFillColor:(ShapeColor)fillColor{
    self.fillColor = fillColor;
}

- (void)setBounds:(ShapeRect)bounds{
    self.bounds = bounds;
}

- (void)draw{
    NSLog(@"Draw a circle at (%d %d %d %d) at %@", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end
