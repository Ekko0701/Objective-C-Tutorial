//
//  main.m
//  NSDictionary_Tutorial
//
//  Created by Ekko on 2023/04/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"에코", @"이름",@"25",@"나이", nil];
        NSLog(@"name : %@", [dict objectForKey:@"이름"]);
    }
    return 0;
}
