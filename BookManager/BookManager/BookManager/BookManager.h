//
//  BookManager.h
//  BookManager
//
//  Created by Ekko on 2023/04/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Book; // 선언부에서는 import 보다는 이런식으로 class를 써준다.
@interface BookManager : NSObject {
    NSMutableArray *bookList;
}

-(void)addBook:(Book *) bookObject;
-(NSString *) showAllBook;
-(NSUInteger) countBook;
-(NSString *) findBook:(NSString *)name;
-(NSString *) removeBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
