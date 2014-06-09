//
//  XYZShoutingPerson.m
//  LearnObjC
//
//  Created by gmochid on 6/8/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)something {
    [super saySomething:[something uppercaseString]];
}

@end
