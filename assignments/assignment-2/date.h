#import <Foundation/Foundation.h>
@interface Date:NSObject {
	NSDate *d;
}
-(NSString*)getStringDate;
-(void)updateDate:(int) change;
-(int)getThursday;
-(NSString*)tenthDay;
@end