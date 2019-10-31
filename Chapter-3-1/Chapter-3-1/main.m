//
//  main.m
//  Chapter-3-1
//
//  Created by ccyag on 31/10/2019.
//  Copyright © 2019 com.ccyag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        if (argc == 1) {
            NSLog(@"You need to provide a file name.");
            return 1;
        }
        NSLog(@"%s", argv[1]);
        FILE *wordFile = fopen(argv[1], "r");
        char word[80];
        while (fgets(word, 80, wordFile)) {
            word[strlen(word) - 1] = '\0';
            NSLog(@"%s is %lu characters long.", word, strlen(word));
        }
        fclose(wordFile);
    }
    return 0;
}
