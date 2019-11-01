//
//  Triangle.h
//  Chapter-3-3
//
//  Created by ccyag on 1/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"
NS_ASSUME_NONNULL_BEGIN

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

NS_ASSUME_NONNULL_END
