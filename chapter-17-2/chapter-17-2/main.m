//
//  main.m
//  chapter-17-2
//
//  Created by ccyag on 7/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        Item *thing1;
        thing1 = [[Item alloc] initWithName:@"thing1" magicNumber:42 shoeSize:10.5];

//        Item *thing2 = [[Item alloc] initWithName:@"thing2" magicNumber:42 shoeSize:10.5];
   
//        [thing1.subThingies addObject:[NSArray array]];

        NSLog(@"some thing: %@", thing1);

        NSError *error;

        
        NSData* freezeDried = [NSKeyedArchiver archivedDataWithRootObject:thing1 requiringSecureCoding:YES error:&error];


        Item *thing0 = [NSKeyedUnarchiver unarchivedObjectOfClass:[Item classForKeyedUnarchiver] fromData:freezeDried error:&error];
        NSLog(@"%@", error);
       NSLog(@"some thing: %@", thing0);
        
    }
    return 0;
}
