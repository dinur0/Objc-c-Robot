//
//  FileViewController.m
//  Lesson6
//
//  Created by хех on 21.02.2024.
//

#import "FileViewController.h"

@interface FileViewController ()

@end

@implementation FileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)ShowRobotFile:(UIButton *)sender {
    self.robot = [[Robot alloc]initWithName:@"nn" x:4 y:3];
    NSData *fileData = [NSKeyedArchiver archivedDataWithRootObject:self.robot];
    [fileData writeToFile:myDirectory() atomically:YES];
    Robot *newRobot = [NSKeyedUnarchiver unarchiveObjectWithFile:myDirectory()];
    self.textViewResult.text = [NSString stringWithFormat:@"%@", newRobot];
}

NSString* myDirectory(void) {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)firstObject]stringByAppendingString:@"/robot.txt"];
}
@end
