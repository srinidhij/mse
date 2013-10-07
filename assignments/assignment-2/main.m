#import "date.h"
int main(int argc,const char* argv[]) {
	NSAutoreleasePool *Pool = [[NSAutoreleasePool alloc] init];
	Date *val = [[Date alloc] init];
	NSLog(@"Today's date is %@\n",[val getStringDate]);
	[val updateDate:(3600*24*2)];
	NSLog(@"Day after tomorrow's date is %@\n",[val getStringDate]);
	[val updateDate:(-3600*24*2)];
	int temp = [val getThursday];
	[val updateDate:temp];
	NSLog(@"Last Thusday's date is %@\n",[val getStringDate]);
	[val updateDate:(-temp)];
	NSLog(@"Tenth day of this month is a %@\n",[val tenthDay]);
	NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
	[formatter setDateFormat:@"dd/mm/yyyy"];
	NSDate *date1 = [formatter dateFromString:@"25/07/1992"];
	NSDate *date2 = [formatter dateFromString:@"16/03/1992"];
	NSDate *tempDate = [date1 earlierDate:date2];
	NSLog(@"%@ is the earlier date between %@ and %@",[formatter stringFromDate: tempDate],[formatter stringFromDate: date1],[formatter stringFromDate: date2]);
	[Pool drain];
	return 0;
}