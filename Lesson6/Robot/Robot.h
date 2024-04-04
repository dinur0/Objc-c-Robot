//
//  Robot.h
//  Lesson6
//
//  Created by хех on 21.02.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding>

@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;
@property (nonatomic) NSString* name;

-(instancetype) initWithName:(NSString*) name x:(NSInteger) xValue y:(NSInteger) yValue;

@end

NS_ASSUME_NONNULL_END
