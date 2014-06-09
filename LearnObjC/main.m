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

void createPersonTest();
void copyMutableStringTest();

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        createPersonTest();
        copyMutableStringTest();
    }
    return 0;
}

void createPersonTest()
{
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

void copyMutableStringTest()
{
    /*
    Test what happens if you set a mutable string as the person’s first name, then mutate that string before calling your modified sayHello method. Change the NSString property declarations by adding the copy attribute and test again.
    */
    NSMutableString* mutableFirstName = [NSMutableString stringWithString:@"MutableFirstName"];
    XYZPerson* person = [XYZPerson person:mutableFirstName lastName:@"LastName"];
    [mutableFirstName appendString:@"Test"];
    [person sayHello:@"Haloo"];
}

