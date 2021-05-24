#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    if (monthNumber < 1 || monthNumber > 12) {
        return nil;
    }
    
    NSDateFormatter *dateFormatter1 = [NSDateFormatter new];
    return [[dateFormatter1 monthSymbols] objectAtIndex:monthNumber - 1];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    NSDateFormatter *dateFormatter2 = [NSDateFormatter new];
    [dateFormatter2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    
    NSDate *dateConvertedToNSDate = [dateFormatter2 dateFromString:date];
    
    NSCalendar *calendar1 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    long day = [calendar1 component:NSCalendarUnitDay fromDate:dateConvertedToNSDate];
    
    return day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter *dateFormatter3 = [NSDateFormatter new];
    [dateFormatter3 setDateFormat:@"eee"];
    
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru-RU"];
    [dateFormatter3 setLocale:locale];
    
    NSString *day = [dateFormatter3 stringFromDate:date];
    
    return day;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSCalendar *calendar2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSInteger weekForToday = [calendar2 component:NSCalendarUnitWeekOfYear fromDate:[NSDate now]];
    NSInteger weekForInputedDate = [calendar2 component:NSCalendarUnitWeekOfYear fromDate:date];
    
    if (weekForToday == weekForInputedDate) {
        return YES;
    }
    
    return NO;
}

@end
