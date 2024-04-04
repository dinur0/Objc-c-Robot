//
//  FileViewController.h
//  Lesson6
//
//  Created by хех on 21.02.2024.
//

#import <UIKit/UIKit.h>
#import "Robot.h"

NS_ASSUME_NONNULL_BEGIN

@interface FileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *fieldX;
@property (strong, nonatomic) IBOutlet UITextField *fieldY;
@property (strong, nonatomic) IBOutlet UITextField *fieldName;
@property (strong, nonatomic) IBOutlet UITextView *textViewResult;
@property (strong,nonatomic) Robot* robot;

- (IBAction)ShowRobotFile:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
