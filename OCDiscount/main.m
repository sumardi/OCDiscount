//
//  main.m
//  OCDiscount
//
//  Created by Sumardi Shukor on 10/12/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Markdown.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *markdown = @"`php code`";
        
        NSLog(@"%@", [markdown htmlWithMarkdown]);
    }
    return 0;
}

