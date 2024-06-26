#import <UIKit/UIKit.h>
#import "Robot.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *fieldX;
@property (strong, nonatomic) IBOutlet UITextField *fieldY;
@property (strong, nonatomic) IBOutlet UITextField *fieldName;
@property (strong, nonatomic) IBOutlet UITextView *textViewResult;
@property (strong,nonatomic) Robot* robot;

- (IBAction)showRobotToTextView:(UIButton *)sender;

@end

