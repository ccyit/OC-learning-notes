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

//Shape
@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void)setFillColor:(ShapeColor)fillColor;
- (void)setBounds:(ShapeRect)bounds;
- (void)draw;
@end

@implementation Shape
- (void)setFillColor:(ShapeColor)c{
    fillColor = c;
}
- (void)setBounds:(ShapeRect)b{
    bounds = b;
}
- (void)draw{}
@end
//Shape

//Circle
@interface Circle : Shape
@end

@implementation Circle
- (void)setFillColor:(ShapeColor)c{
    if (c == kRedColor) {
        c = kGreenColor;
    }
    [super setFillColor:c];
}

- (void)draw{
    NSLog(@"Draw a circle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end
//Circle


//Rectangle
@interface Rectangle : Shape
@end

@implementation Rectangle
- (void)draw{
    NSLog(@"Draw a reatangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end
//Rectangle

//Egg
@interface Egg : Shape
@end

@implementation Egg
- (void)draw{
    NSLog(@"Draw an egg at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end
//Egg

//Triangle
@interface Triangle : Shape
@end

@implementation Triangle
- (void)draw{
    NSLog(@"Draw a triangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}
@end
//Tringle


//RoundedRectangle
@interface RoundedRectangle: Shape
{
    @private
    int radius;
}

- (void)setRadius:(int)a;
@end

@implementation RoundedRectangle

- (void)setRadius:(int)a{
    radius = a;
}

- (void)draw{
    NSLog(@"Draw a roundedrectangle at (%d %d %d %d) in %@, and the radius is %d.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor), radius);
}
@end
//RoundedRectangle


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
        int shapesCount = 5;
        id shapes[shapesCount];
        
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
        
        ShapeRect rect4 = {100, 200, 300, 400};
        shapes[4] = [RoundedRectangle new];
        [shapes[4] setRadius:20];
        [shapes[4] setFillColor:kGreenColor];
        [shapes[4] setBounds:rect4];
        
        
        drawShapes(shapes, shapesCount);
        
    }
    return 0;
}
