//
//  main.m
//  CarPart
//
//  Created by 위대연 on 2020/01/17.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Slant6.h"
#import "AllWaterRadial.h"

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
