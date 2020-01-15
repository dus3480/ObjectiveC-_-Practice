//
//  main.m
//  Count1
//
//  Created by 위대연 on 2020/01/15.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 10;
        NSLog(@"The numbers from 1 to %d:",count);
        
        for (int i = 1; i <= count; i++) {
            NSLog(@"%d",i);
        }
    }
    return 0;
}
