//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  LearnObjC
//
//  Created by gmochid on 6/10/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)

-(NSString *) lastNameFirstNameString {
    return [NSString stringWithFormat:@"%@, %@", [self lastName], [self firstName]];
}

@end
