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

void testCreatePerson();
void testCopyMutableString();
void testStrongWeakVar();

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        testCreatePerson();
        testCopyMutableString();
        testStrongWeakVar();
    }
    return 0;
}

void testCreatePerson()
{
    XYZPerson *person = [XYZShoutingPerson person];
    [person sayHello:@"Halo"];
    
    XYZPerson *test;
    if(!test) {
        NSLog(@"Test nil");
        [test firstName];
    }
    
    XYZPerson *anotherPerson = [XYZPerson person];
    [anotherPerson sayHello:@"Arigatou"];
    
    XYZPerson *datePerson = [XYZPerson person:@"Jim" lastName:@"Raynor" dateOfBirth:[NSDate date]];
    [datePerson sayIntroduction];
}

void testCopyMutableString()
{
    /*
    Test what happens if you set a mutable string as the person’s first name, then mutate that string before calling your modified sayHello method. Change the NSString property declarations by adding the copy attribute and test again.
    */
    NSMutableString *mutableFirstName = [NSMutableString stringWithString:@"MutableFirstName"];
    XYZPerson *person = [XYZPerson person:mutableFirstName lastName:@"LastName"];
    [mutableFirstName appendString:@"Test"];
    [person sayHello:@"Haloo"];
}

void testStrongWeakVar()
{
    XYZPerson *__weak weakPerson = [[XYZPerson alloc] init];
    if (!weakPerson) {
        NSLog(@"weakPerson already deallocated");
    }
    
    XYZPerson *person = [[XYZPerson alloc] init];
    if (person) {
        NSLog(@"person still exist");
    }

    weakPerson = person;
    if (weakPerson) {
        NSLog(@"weakPerson still exist");
    }
    
    person = nil;
    if (!weakPerson) {
        NSLog(@"weakPerson already deallocated");
    }

}

