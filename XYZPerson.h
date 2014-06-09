//
//  XYZPerson.h
//  LearnObjC
//
//  Created by gmochid on 6/8/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property NSString *firstName;
@property NSString *lastName;

- (NSString *)fullName;
- (void)saySomething:(NSString *)something;
- (void)sayHello:(NSString *)greet;

+ (XYZPerson *)person;
+ (XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName;

@end
