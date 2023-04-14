//
//  main.m
//  NSArray_Tutorial
//
//  Created by Ekko on 2023/04/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"January",@"Febuary",@"March",@"April",@"June",@"July",@"August",@"September", nil];
        
        NSMutableArray *mmmonth = [NSMutableArray arrayWithArray:month];
        
        [mmmonth addObject:@"Octoer"];
        [mmmonth addObject:@"Novbember"];
        [mmmonth addObject:@"December"];
        
        for (NSString *strTemp in mmmonth) {
            NSLog(@"mmonth : %@", strTemp);
        }
    }
    return 0;
}
