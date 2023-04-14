//
//  Book.h
//  BookManager
//
//  Created by Ekko on 2023/04/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *genre;
@property (nonatomic, strong)NSString *author;

-(void)bookPrint;

@end

NS_ASSUME_NONNULL_END
