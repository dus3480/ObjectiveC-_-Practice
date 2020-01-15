//
//  main.m
//  WordLength
//
//  Created by 위대연 on 2020/01/15.
//  Copyright © 2020 위대연. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const int wordCount = 4;
        
        const char * words[wordCount] = {"aardvark","abacus","allude","zygote"};
        for (int i = 0; i < wordCount; i++) {
            NSLog(@"%s is %lu characters long", words[i], strlen(words[i]));
        }
        printf("\n");
        printf("\n");
        
        const char * words2[wordCount] = {
            "Joe-Bob \"Handyman\" Brown",
            "Jacksonville \"Sly\" Murphy",
            "Shinara Bain",
            "George \"Guitar\" Books"
        };
        
        for (int i = 0; i < wordCount; i++) {
            NSLog(@"%s is %lu characters long", words2[i], strlen(words2[i]));
        }
        printf("\n");
        printf("\n");
        
        const char * fileUrl = argc == 1 ? "/usr/share/dict/words" : argv[1];
        FILE * wordFile = fopen(fileUrl, "r");
        
        char word[100];
        while (fgets(word, 100, wordFile)) {
            word[strlen(word) - 1] = '\0';
            NSLog(@"%s is %lu characters long", word, strlen(word));
        }
        
        fclose(wordFile);
        
        
    }
    return 0;
}
