//
//  XYZPerson.h
//  LearnObjC
//
//  Created by gmochid on 6/8/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property (copy) NSString *firstName;
@property (copy) NSString *lastName;
@property (copy) NSDate *dateOfBirth;

- (id)initWithName:(NSString *)firstName lastName:(NSString *)lastName;

- (NSString *)fullName;
- (void)saySomething:(NSString *)something;
- (void)sayHello:(NSString *)greet;
- (void)sayIntroduction;

+ (XYZPerson *)person;
+ (XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName;
+ (XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth;

@end
