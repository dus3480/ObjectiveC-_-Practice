//
//  Car.m
//  CarPart
//
//  Created by 위대연 on 2020/01/20.
//  Copyright © 2020 위대연. All rights reserved.
//

#import "Car.h"

@implementation Car
{
    Engine *engine;
    Tire *tires[4];
}
/*
- (instancetype)init
{
    self = [super init];
    if (self) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return self;
}//init
 */
- (Engine *)engine {
    return engine;
}//engine

- (void)setEngine:(Engine *) newEngine {
    engine = newEngine;
}//setEngine

- (Tire *)tireAnIndex:(int)index {
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        exit(1);
    }
    return tires[index];
}//tireAnIndex



- (void)setTire:(Tire *)tire atIndex:(int)index {
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    tires[index] = tire;
}//setTire

- (void) print {
    NSLog (@"%@", engine);
    NSLog (@"%@", tires[0]);
    NSLog (@"%@", tires[1]);
    NSLog (@"%@", tires[2]);
    NSLog (@"%@", tires[3]);
}//print
@end//Car -implementation
