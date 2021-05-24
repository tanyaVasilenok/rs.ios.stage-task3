#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DateHelper.h"
#import "PlayersSeparator.h"
#import "LexicographicallyMinimal.h"
#import "LevelOrderTraversal.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        
        DateHelper *dateHelper = [DateHelper new];
        NSString *date = @"2018-03-28T16:37:29Z";
        [dateHelper dayFromDate:date];
        
        PlayersSeparator *playersSeparator = [PlayersSeparator new];
        NSArray <NSNumber *> *array = @[@3,@2,@4];
        [playersSeparator dividePlayersIntoTeams:array];
        
        LexicographicallyMinimal *lexicMinimal = [LexicographicallyMinimal new];
        NSString *string1 = @"ABCD";
        NSString *string2 = @"ABC";
        [lexicMinimal findLexicographicallyMinimalForString1:string1 andString2:string2];
        
        LevelOrderTraversalForTree(@[@4,@2,@1,[NSNull null],[NSNull null],@3,[NSNull null],[NSNull null],@7,@5,[NSNull null],@6,[NSNull null],[NSNull null],@8]);
        
        NSArray *binaryTreeRawData = @[@4,@2,@1,[NSNull null],[NSNull null],@3,[NSNull null],[NSNull null],@7,@5,[NSNull null],@6,[NSNull null],[NSNull null],@8];
            
        NSLog(@"end");
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
