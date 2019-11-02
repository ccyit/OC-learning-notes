//
//  main.m
//  Chapter-8-2
//
//  Created by ccyag on 2/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //数组中可以存放字符串，数字，其他数组，字典等数据。
        NSArray *array = @[@"one", @"two", @3,@[@"four", @"five"],@{@"firstName":@"Chen",@"LastName":@"ChenChen"}];
        
        NSLog(@"%@ \n%lu", array, array.count);
        NSLog(@"%@", array[4]);
        
        NSString *string = @"a:b:c:d:e:f";
        NSArray *chucks = [string componentsSeparatedByString:@":"];
        string = [chucks componentsJoinedByString:@"->"];
        NSLog(@"%@", string);
        
        NSMutableArray *mulArray = [NSMutableArray arrayWithCapacity:4];
        [mulArray addObject:@"one"];
        
        [mulArray removeObjectAtIndex:0];
        [mulArray removeLastObject];
        [mulArray removeAllObjects];
        
        NSLog(@"%@", mulArray);
        [mulArray addObject:@"one"];
        [mulArray addObject:@"two"];
        
        NSEnumerator *enumerator = [mulArray objectEnumerator];
        id things;
        while (things = [enumerator nextObject]) {
            NSLog(@"%@", things);
        }
        
        for (id things in mulArray) {
            NSLog(@"%@", things);
        }
        
        [mulArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"%@", obj);
        }];
        
        //字典
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"value",@"key", nil];
        
        
        NSMutableDictionary *dict2 = [NSMutableDictionary dictionaryWithCapacity:4];
        [dict2 setObject:@"value" forKey:@"key"];
        
        NSLog(@"%@", dict);
        NSLog(@"%@", dict2);
        
    }
    return 0;
}
