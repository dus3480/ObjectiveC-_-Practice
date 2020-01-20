//
//  Car.h
//  CarPart
//
//  Created by 위대연 on 2020/01/20.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAnIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void) print;
@end//Car -interace


NS_ASSUME_NONNULL_END
