//
//  Vehicle.h
//  Objc_First
//
//  Created by Ekko on 2023/04/09.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject
// member method
@property int wheels;
@property int seats;

-(void) setWheels:(int)w Seats:(int)s;
// (void)drawCircle(int x, int y, int r);
-(void) drawCircleX:(int)x Y:(int)y R:(int)r;
-(void)drawCircleXYR: (int)x :(int)y :(int)r;
-(void)print;
@end

NS_ASSUME_NONNULL_END
