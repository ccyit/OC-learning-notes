//
//  main.m
//  Chapter-4-1
//
//  Created by ccyag on 1/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

//ShapeType
typedef enum{
    kCircle, kRectangle, kEgg, kTriangle
} ShapeType;

//ShapeColor
typedef enum {
    kRedColor, kBlueColoe, kGreenColor
} ShapeColor;

//ShapeRect
typedef struct{
    int x, y, width, height;
} ShapeRect;

//Shape
typedef struct{
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

//colorName
NSString *colorName(ShapeColor colorName){
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColoe:
            return @"blue";
            break;
        default:
            return @"no clue";
            break;
    }
}
void drawShapes(id shapes[], int count);


//Circle
@interface Circle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;

@end


//Circle
@implementation Circle

- (void)setFillColor:(ShapeColor)c{
    fillColor = c;
}

- (void)setBounds:(ShapeRect)b{
    bounds = b;
}

- (void)draw{
    NSLog(@"Draw a circle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end


//Rectangle
@interface Rectangle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;
@end


//Rectangle
@implementation Rectangle
- (void)setFillColor:(ShapeColor)c{
    fillColor = c;
}

- (void)setBounds:(ShapeRect)b{
    bounds = b;
}

- (void)draw{
    NSLog(@"Draw a reatangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end

//Egg
@interface Egg : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;
@end

//Egg
@implementation Egg
- (void)setFillColor:(ShapeColor)c{
    fillColor = c;
}

- (void)setBounds:(ShapeRect)b{
    bounds = b;
}

- (void)draw{
    NSLog(@"Draw an egg at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end

//Triangle
@interface Triangle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}

- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;
@end

//Tringle
@implementation Triangle

- (void)setFillColor:(ShapeColor)c{
    fillColor = c;
}

- (void)setBounds:(ShapeRect)b{
    bounds = b;
}

- (void)draw{
    NSLog(@"Draw a triangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

@end

void drawShapes(id shapes[], int count){
    for (int i = 0; i < count; i++){
        id shape = shapes[i];
        [shape draw];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        id shapes[4];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        shapes[0] = [Circle new];
        [shapes[0] setFillColor:kRedColor];
        [shapes[0] setBounds: rect0];
        
        ShapeRect rect1 = {30, 40, 50, 60};
        shapes[1] = [Rectangle new];
        [shapes[1] setFillColor:kGreenColor];
        [shapes[1] setBounds: rect1];
        
        ShapeRect rect2 = {15, 19, 37, 29};
        shapes[2] = [Egg new];
        [shapes[2] setFillColor:kBlueColoe];
        [shapes[2] setBounds: rect2];
        
        ShapeRect rect3 = {47, 32, 80, 50};
        shapes[3] = [Triangle new];
        [shapes[3] setFillColor:kRedColor];
        [shapes[3] setBounds: rect3];
        
        drawShapes(shapes, 4);
        
    }
    return 0;
}
