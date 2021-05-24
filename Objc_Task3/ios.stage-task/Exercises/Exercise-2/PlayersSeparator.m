#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    NSUInteger count = 0;
    
    if (ratingArray == nil) {
        return 0;
    }
    
    if (ratingArray.count < 3) {
        return 0;
    }
    
    for (NSUInteger i = 0; i < ratingArray.count; i++) {
        for (NSUInteger j = i + 1; j < ratingArray.count; j++) {
            for (NSUInteger k = j + 1; k < ratingArray.count; k++) {
                if (([ratingArray[i] intValue] < [ratingArray[j] intValue] && [ratingArray[j] intValue] < [ratingArray[k] intValue]) ||
                    ([ratingArray[i] intValue] > [ratingArray[j] intValue] && [ratingArray[j] intValue] > [ratingArray[k] intValue])) {
                    count++;
                }
            }
        }
    }
    
    return count;
}

@end
