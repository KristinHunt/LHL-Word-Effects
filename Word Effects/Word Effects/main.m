//
//  main.m
//  Word Effects
//
//  Created by Kristin Hunt on 10/19/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
    // inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    // NSString *inputString = [[NSString stringWithUTF8String:inputChars] uppercaseString];

    // NSString *inputString = [[NSString stringWithUTF8String:inputChars] lowercaseString];
    
    // [inputString intValue];
    
    // NSString *addToString = [inputString stringByAppendingString:@"eh!"];
    
    if ([[inputString substringFromIndex:inputString.length -1] isEqualToString: @"?"]) {
      printf("I don't know");
    } else if ([[inputString substringFromIndex:inputString.length -1] isEqualToString: @"!"]) {
      printf("Whoa, calm down!");
    }
    
    // print NSString object
    NSLog(@"Input was: %@", inputString);
    
  }
    return 0;
}
