//
//  main.m
//  NSString_Tutorial
//
//  Created by Ekko on 2023/04/09.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"This is NSString"; // 그리고 NSString만 이렇게 따로 동적 할당을 해주지 않아도 문자열을 바로 초기화 할 수 있다.
        
        NSString *result;
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result: %@", result);
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        
        [mstr appendString:@" and NSMutableString"];
        NSLog(@"result: %@", mstr);
        
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"result: %@", mstr);
    }
    return 0;
}
