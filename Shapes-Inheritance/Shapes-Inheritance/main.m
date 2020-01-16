//
//  main.m
//  Shapes-Inheritance
//
//  Created by 위대연 on 2020/01/16.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

NSString * colorName (ShapeColor color) {
    switch (color) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
    }
    
    return @"no clue";
    
} // colorName

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor: (ShapeColor) color;
- (void) setBounds: (ShapeRect) rect;
- (void) draw;

@end // Shape -interface

@implementation Shape

- (void)setFillColor:(ShapeColor) color {
    fillColor = color;
}//setFillColor
- (void)setBounds:(ShapeRect) rect {
    bounds = rect;
}//setBounds
- (void)draw { }//draw

@end //Shape -implementation


@interface Circle : Shape
@end//Circle - interface

@implementation Circle
- (void) setFillColor:(ShapeColor)color {
    if (color == kRedColor) {
        color = kGreenColor;
    }
    [super setFillColor:color];
}//setFillColor

- (void) draw {
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height,
          colorName(fillColor));
}//draw
@end//Circle - implementation


@interface Rectangle : Shape
@end//Rectangle - interface

@implementation Rectangle
- (void) draw {
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height,
          colorName(fillColor));
}//draw
@end//Rectangle - implementation


@interface Egg : Shape
@end//Egg - interface

@implementation Egg
- (void) draw {
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@",
          bounds.x, bounds.y, bounds.width, bounds.height,
          colorName(fillColor));
}//draw
@end//Egg - implementation


void drawShapes (__strong id shapes[], int count)
{
    for (int i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
    
} // drawShapes


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id shapes[3];
        ShapeRect rect0 = { 0, 0, 10, 30};
        ShapeRect rect1 = { 30, 40, 50, 60};
        ShapeRect rect2 = { 15, 19, 37, 29};
        shapes[0] = [Circle new];
        [shapes[0] setBounds:rect0];
        [shapes[0] setFillColor:kRedColor];
        
        shapes[1] = [Rectangle new];
        [shapes[1] setBounds:rect1];
        [shapes[1] setFillColor:kGreenColor];
        
        shapes[2] = [Egg new];
        [shapes[2] setBounds:rect2];
        [shapes[2] setFillColor:kBlueColor];
        
        drawShapes(shapes, 3);
        
    }
    return 0;
}
