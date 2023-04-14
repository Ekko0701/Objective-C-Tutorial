//
//  main.m
//  BookManager
//
//  Created by Ekko on 2023/04/10.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Book
        Book *book1 = [[Book alloc] init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"셰익스피어";
        
        Book *book2 = [[Book alloc] init];
        book2.name = @"누구를 위하여 종을 울리나";
        book2.genre = @"전쟁소설";
        book2.author = @"헤밍웨이";
        
        Book *book3 = [[Book alloc] init];
        book3.name = @"죄와 벌";
        book3.genre = @"사실주의";
        book3.author = @"톨스토이";
        
        BookManager *myBook = [[BookManager alloc] init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        
        
        NSString *strTemp = [myBook findBook:@"죄와 벌"];
        if (strTemp != nil) {
            NSLog(@"%@",strTemp);
        } else {
            NSLog(@"찾으시는 책이 없네요 ^^;");
        }
        
        NSString *removeResult = [myBook removeBook:@"죄와 벌"];
        
        if(removeResult != nil) {
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        } else {
            NSLog(@"지울려는 책이 없네요 ^^;");
        }
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
    }
    return 0;
}
