//
//  Robot.m
//  Lesson6
//
//  Created by хех on 21.02.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithName:(NSString *)name x:(NSInteger)xValue y:(NSInteger)yValue {
    self = [super init];
    if (self){
        self.x = xValue;
        self.y = yValue;
        self.name = name;
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder { 
    [coder encodeInteger:self.x forKey:@"X"];
    [coder encodeInteger:self.y forKey:@"Y"];
    [coder encodeObject:self.name forKey:@"name"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self){
        self.x = [coder decodeIntegerForKey:@"X"];
        self.y = [coder decodeIntegerForKey:@"Y"];
        self.name = [coder decodeObjectForKey:@"name"];
    }
    return self;
}

@end
