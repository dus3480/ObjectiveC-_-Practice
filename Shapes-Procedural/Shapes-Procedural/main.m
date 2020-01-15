//
//  main.m
//  Shapes-Procedural
//
//  Created by 위대연 on 2020/01/15.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    kCircle,
    kRectangle,
    kEgg,
    kTriangle
} ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;

NSString * colorName(ShapeColor colorName);
void drawShapes(Shape shapes[], int count);
void drawCircle(ShapeRect bounds, ShapeColor fillColor);
void drawRectangle(ShapeRect bounds, ShapeColor fillColor);
void drawEgg(ShapeRect bounds, ShapeColor fillColor);
void drawTriangle(ShapeRect bounds, ShapeColor fillColor);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shape shapes[4];
        
        ShapeRect rect0 = { 0, 0, 10, 30};
        shapes[0].type = kCircle;
        shapes[0].fillColor = kRedColor;
        shapes[0].bounds = rect0;
        
        ShapeRect rect1 = { 30, 40, 50, 60};
        shapes[1].type = kRectangle;
        shapes[1].fillColor = kGreenColor;
        shapes[1].bounds = rect1;
        
        ShapeRect rect2 = { 15, 18, 37, 29};
        shapes[2].type = kEgg;
        shapes[2].fillColor = kBlueColor;
        shapes[2].bounds = rect2;
        
        ShapeRect rect3 = { 47, 32, 80, 50};
        shapes[3].type = kCircle;
        shapes[3].fillColor = kRedColor;
        shapes[3].bounds = rect3;

        drawShapes(shapes, 4);
    }
    return 0;
}

NSString * colorName(ShapeColor colorName) {
    switch (colorName) {
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
}

void drawShapes(Shape shapes[], int count) {
    for (int i = 0; i < count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kEgg:
                drawEgg(shapes[i].bounds, shapes[i].fillColor);
                break;
            case kTriangle:
                drawTriangle(shapes[i].bounds, shapes[i].fillColor);
                break;
        }
    }
}

void drawCircle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
}

void drawRectangle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",
    bounds.x, bounds.y,
    bounds.width, bounds.height,
    colorName(fillColor));
}

void drawEgg(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@",
    bounds.x, bounds.y,
    bounds.width, bounds.height,
    colorName(fillColor));
}


void drawTriangle(ShapeRect bounds, ShapeColor fillColor) {
    NSLog(@"drawing a Triangle at (%d %d %d %d) in %@",
    bounds.x, bounds.y,
    bounds.width, bounds.height,
    colorName(fillColor));
}
