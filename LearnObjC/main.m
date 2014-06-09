//
//  main.m
//  LearnObjC
//
//  Created by gmochid on 6/6/14.
//  Copyright (c) 2014 gmochid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        XYZPerson* person = [XYZShoutingPerson person];
        [person sayHello:@"Halo"];
        
        XYZPerson* test;
        if(!test) {
            NSLog(@"Test nil");
            [test firstName];
        }
        
        XYZPerson* anotherPerson = [XYZPerson person];
        [anotherPerson sayHello:@"Arigatou"];
    }
    return 0;
}

