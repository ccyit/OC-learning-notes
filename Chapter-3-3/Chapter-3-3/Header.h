//
//  Header.h
//  Chapter-3-3
//
//  Created by ccyag on 1/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#ifndef Header_h
#define Header_h

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


#endif /* Header_h */
