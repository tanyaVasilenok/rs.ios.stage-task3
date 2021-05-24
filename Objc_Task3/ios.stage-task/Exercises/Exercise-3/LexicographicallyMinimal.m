#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSUInteger length1 = string1.length;
    
    NSString *resultString = [NSString new];
    
    NSComparisonResult comparison;
    
    while (string1.length != 0 && string2.length != 0) {
        
        comparison = [string1 compare:string2];
    
        if (comparison == NSOrderedSame || comparison == NSOrderedAscending) {
            
            resultString = [resultString stringByAppendingString:[string1 substringToIndex:1]];
            string1 = [string1 substringFromIndex:1];
            string2 = [string2 substringFromIndex:0];
            
            continue;
        }
        
        if (comparison == NSOrderedDescending) {
            resultString = [resultString stringByAppendingString:[string2 substringToIndex:1]];
            string1 = [string1 substringFromIndex:0];
            string2 = [string2 substringFromIndex:1];
        }
        length1 = string1.length;
    }
    
    if (string1.length > 0) {
        resultString = [resultString stringByAppendingString:string1];
    }
    
    if (string2.length > 0) {
        resultString = [resultString stringByAppendingString:string2];
    }
    
    NSLog(@"Str1 - %@, Str2 - %@, ResultStr - %@", string1, string2, resultString);
    
    return resultString;
}

@end
