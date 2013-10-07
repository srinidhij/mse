#import "date.h"
@implementation Date
-(id)init {
	if((self=[super init])) {
		d = [NSDate date];
	}
	return self;
}
-(NSString*)getStringDate {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	dateFormatter.dateFormat = @"dd/MM/yy";
	NSString* temp = [dateFormatter stringFromDate: d];
	[dateFormatter release];
	return temp;
}
-(void)updateDate:(int) change {
	d = [d addTimeInterval:change];
}
-(int)getThursday {
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *weekdayComponents =[gregorian components:NSWeekdayCalendarUnit fromDate:d];
	[gregorian release];
	NSInteger weekday = [weekdayComponents weekday];
	return (-3600*24)*((weekday+2)%7);
}
-(NSString*)tenthDay {
	NSDateComponents *components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[NSDate date]];
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *weekdayComponents =[gregorian components:NSWeekdayCalendarUnit fromDate:d];
	[gregorian release];
	NSInteger weekday = [weekdayComponents weekday];
	int day = [components day];
	int n = ((10-day)+(weekday-1))%7;
	NSString *retVal = [[NSString alloc] init];
	switch(n) {
		case 0: retVal = @"Sunday";
				break;
		case 1: retVal = @"Monday";
				break;
		case 2: retVal = @"Tuesday";
				break;
		case 3: retVal = @"Wednesday";
				break;
		case 4: retVal = @"Thursday";
				break;
		case 5: retVal = @"Friday";
				break;
		case 6: retVal = @"Saturday";
				break;
	}
	return retVal;
}
@end