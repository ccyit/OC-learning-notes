//
//  main.m
//  chapter17-1
//
//  Created by ccyag on 6/11/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        NSDate *date = [NSDate date];
        NSLog(@"today is %@", date);
        NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-(24 * 60 * 60)];
        NSLog(@"yesterday is %@", yesterday);
        
        NSDictionary *dic = @{@"FirstName": @"Chen",
                              @"LastName": @"Chongyang"};
        
        NSData * data_binary = [NSPropertyListSerialization dataWithPropertyList:dic format:NSPropertyListBinaryFormat_v1_0 options:0 error:nil];
        NSLog(@"data = %@", data_binary);
        [data_binary writeToFile:@"/tmp/BinaryFormatData" atomically:YES];

      
        
        
        NSData *data_xml = [NSPropertyListSerialization dataWithPropertyList:dic format:NSPropertyListXMLFormat_v1_0 options:0 error:nil];
        NSLog(@"data = %@", data_xml);
        [data_xml writeToFile:@"/tmp/XMLFormatData" atomically:YES];

        NSPropertyListFormat format;
        
        NSMutableDictionary *dic2 = [NSPropertyListSerialization propertyListWithData:data_binary options:NSPropertyListMutableContainersAndLeaves format:&format error:nil];
        
        NSLog(@"%ld", format);
        NSLog(@"%@", dic2);
        
        NSMutableDictionary *dic3 = [NSPropertyListSerialization propertyListWithData:data_xml options:NSPropertyListMutableContainersAndLeaves format:&format error:nil];
        
        NSLog(@"%ld", format);
        NSLog(@"%@", dic3);
        
        
        
        
    }
    return 0;
}
