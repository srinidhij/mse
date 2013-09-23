#import<Foundation/Foundation.h>
#import"phonecard.h"
@implementation phonecard
-(void)print
{
	NSLog(@"Name is:: %@\n",name);
	NSLog(@"Email is:: %@\n",email);
	NSLog(@"Id is:: %d\n",no);
}
-(NSString*)getName
{
	return name;
}
@synthesize name,email,no;
@end