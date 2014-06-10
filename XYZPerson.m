//
//  XYZPerson.m
//  LearnObjC
//
//  Created by gmochid on 6/8/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import "XYZPerson.h"
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson

-(id)initWithName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    
    if (self) {
        [self setFirstName:firstName];
        [self setLastName:lastName];
    }
    
    return self;
}

-(id)initWithNameDate:(NSString *)firstName lastName:(NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth {
    self = [super init];
    
    if (self) {
        [self setFirstName:firstName];
        [self setLastName:lastName];
        [self setDateOfBirth:dateOfBirth];
    }
    
    return self;
}

-(NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

-(void)saySomething:(NSString *)something {
    NSLog(@"%@", something);
}

-(void)sayHello:(NSString *) greet {
    [self saySomething:[NSString stringWithFormat:@"%@ %@", greet, [self fullName]]];
}

-(void)sayIntroduction {
    [self saySomething:[NSString stringWithFormat:@"My Name is %@ and was born on %@", [self lastNameFirstNameString], [self dateOfBirth]]];
}

+(XYZPerson *)person {
    return [XYZPerson person:@"DefaultFirstName" lastName:@"DefaultLastName"];
}

+(XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName {
    return [[XYZPerson alloc] initWithName:firstName lastName:lastName];
}

+(XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth {
    return [[XYZPerson alloc] initWithNameDate:firstName lastName:lastName dateOfBirth:dateOfBirth];
}

@end
