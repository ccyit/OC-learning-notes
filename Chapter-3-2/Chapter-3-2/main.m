//
//  main.m
//  Chapter-3-2
//
//  Created by ccyag on 31/10/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    kCircle, kRectangle, kEgg, kTriangle
} ShapeType;

typedef enum {
    kRedColor, kBlueColoe, kGreenColor
} ShapeColor;

typedef struct{
    int x, y, width, height;
} ShapeRect;

typedef struct{
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

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

void drawCircle(ShapeRect bounds, ShapeColor fillColor){
    NSLog(@"Drawing a circle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawRectangle(ShapeRect bounds, ShapeColor fillColor){
    NSLog(@"Drawing a rectangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawEgg(ShapeRect bounds, ShapeColor fillColor){
    NSLog(@"Drawing an egg at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}

void drawTriangle(ShapeRect bounds, ShapeColor fillColor){
    NSLog(@"Drawing a triangle at (%d %d %d %d) in %@.", bounds.x, bounds.y, bounds.width, bounds.height, colorName(fillColor));
}



void drawShapes(Shape shapes[], int count){
    for (int i = 0; i < count; i++) {
        ShapeRect bounds = shapes[i].bounds;
        ShapeColor fillColor = shapes[i].fillColor;
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(bounds, fillColor);
                break;
            case kRectangle:
                drawRectangle(bounds, fillColor);
                break;
            case kEgg:
                drawEgg(bounds, fillColor);
                break;
            case kTriangle:
                drawTriangle(bounds, fillColor);
                break;
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        
        Shape shapes[4];
        
        ShapeRect rect0 = {0, 0, 10, 30};
        shapes[0].type = kCircle;
        shapes[0].fillColor = kRedColor;
        shapes[0].bounds = rect0;
        
        ShapeRect rect1 = {30, 40, 50, 60};
        shapes[1].type = kRectangle;
        shapes[1].fillColor = kGreenColor;
        shapes[1].bounds = rect1;
        
        ShapeRect rect2 = {15, 18, 37, 29};
        shapes[2].type = kEgg;
        shapes[2].fillColor = kBlueColoe;
        shapes[2].bounds = rect2;
        
        ShapeRect rect3 = {47, 32, 80, 50};
        shapes[3].type = kTriangle;
        shapes[3].fillColor = kRedColor;
        shapes[3].bounds = rect3;
        
        drawShapes(shapes, 4);
    }
    return 0;
}






