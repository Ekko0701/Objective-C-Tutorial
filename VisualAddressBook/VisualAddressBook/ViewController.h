//
//  ViewController.h
//  VisualAddressBook
//
//  Created by Ekko on 2023/04/10.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController {
    BookManager *myBook;
}
@property (nonatomic, strong) IBOutlet UITextView *resultTextView;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *genreTextField;
@property (nonatomic, strong) IBOutlet UITextField *authorTextField;
@property (nonatomic, strong) IBOutlet UILabel *countLabel;

-(IBAction)showAllBookAction:(id)sender;
-(IBAction)findBookAction:(id)sender;
-(IBAction)addBookAction:(id)sender;
-(IBAction)removeBookAction:(id)sender;

@end

