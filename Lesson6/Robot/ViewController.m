//
//  ViewController.m
//  Lesson6
//
//  Created by хех on 21.02.2024.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    NSUserDefaults* defaultsSettins = [NSUserDefaults standardUserDefaults];
//    NSInteger x = [defaultsSettins integerForKey:@"X"];
//    NSInteger y = [defaultsSettins integerForKey:@"Y"];
//    NSString *name = [defaultsSettins stringForKey:@"name"];
////    NSLOG
//    
//}


- (IBAction)showRobotToTextView:(UIButton *)sender {
    NSUserDefaults* defaultsSettins = [NSUserDefaults standardUserDefaults];
    self.robot = [[Robot alloc]initWithName:[NSString stringWithFormat:@"%@", self.fieldName.text] x:[self.fieldX.text integerValue] y:[self.fieldY.text integerValue]];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:self.robot requiringSecureCoding:NO error:NULL];
    [defaultsSettins setObject: robotData forKey:@"robot"];
    
    NSData *newData = [defaultsSettins objectForKey:@"robot"];
    Robot *unpackedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:newData];
    self.textViewResult.text = [NSString stringWithFormat:@"%@", unpackedRobot];
}

@end
