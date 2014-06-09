//
//  XYZPerson.m
//  LearnObjC
//
//  Created by gmochid on 6/8/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

-(id)initWithName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    
    if (self) {
        [self setFirstName:firstName];
        [self setLastName:lastName];
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

+(XYZPerson *)person {
    return [XYZPerson person:@"DefaultFirstName" lastName:@"DefaultLastName"];
}

+ (XYZPerson *)person:(NSString *)firstName lastName:(NSString *)lastName {
    return [[XYZPerson alloc] initWithName:firstName lastName:lastName];
}

@end
