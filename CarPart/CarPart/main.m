//
//  main.m
//  CarPart
//
//  Created by 위대연 on 2020/01/17.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
@end//Tire -interface

@implementation Tire
- (NSString *) description {
    return @"I am a tire. I last a while.";
}
@end//Tire -implementation


@interface Engine : NSObject
@end//Engine -interface

@implementation Engine
- (NSString *) description {
    return @"I am an engine. Vrooom!";
}
@end//Engine -implementation


@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAnIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void) print;
@end//Car -interace

@implementation Car
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


@interface Slant6 : Engine
@end//Slant6 -interface

@implementation Slant6
- (NSString *)description
{
    return @"I am a slant- 6. VROOOM!";
}//description
@end//Slant6 - implementation


@interface AllWaterRadial : Tire
@end//AllWaterRadial -interface

@implementation AllWaterRadial
- (NSString *)description
{
    return @"I am a tire for rain or shine.";
}
@end//AllWaterRadial -implementation



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Car * car;
        car = [Car new];
        //Engine * engine = [Engine new];
        Engine * engine = [Slant6 new];
        [car setEngine:engine];
        for (int i = 0; i < 4; i++) {
            //Tire * tire = [Tire new];
            Tire * tire = [AllWaterRadial new];
            [car setTire:tire atIndex:i];
        }
        [car print];
    }
    return 0;
}
