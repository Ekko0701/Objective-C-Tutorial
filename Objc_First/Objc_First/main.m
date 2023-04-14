//
//  main.m
//  Objc_First
//
//  Created by Ekko on 2023/04/08.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [[Vehicle alloc]init];
        
        [hello setWheels:4 Seats:2];
        
        
        for(int i = 0; i<hello.wheels; i++) {
            NSLog(@"wheels: %i", i);
        }
        
        int i = 0;
        
        while (i<hello.seats) {
            NSLog(@"seats : %i", i);
            i++;
        }
        NSLog(@"wheels: %i, seats: %i", hello.wheels, hello.seats);
        
    }
    return 0;
}
