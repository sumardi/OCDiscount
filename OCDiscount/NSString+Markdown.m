//
//  NSString+Markdown.m
//  OCDiscount
//
//  Created by Sumardi Shukor on 10/12/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "NSString+Markdown.h"
#import "markdown.h"

@implementation NSString (Markdown)

- (NSString *)htmlWithMarkdown
{
    NSString *html = nil;
    
    char *markdownUTF8 = (char*)[self UTF8String];
    Document *document = mkd_string(markdownUTF8, (int)strlen(markdownUTF8), 0);
    
    if (document) {
        if (mkd_compile(document, 0)) {
            char *htmlUTF8;
            int htmlUTF8Len = mkd_document(document, &htmlUTF8);
            if (htmlUTF8Len != EOF) {
                html = [[NSString alloc] initWithBytes:htmlUTF8
                                                length:htmlUTF8Len
                                              encoding:NSUTF8StringEncoding];
            }
            mkd_cleanup(document);
        }
    }
    
    return html;
}

@end
