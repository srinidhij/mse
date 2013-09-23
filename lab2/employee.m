#import<Foundation/Foundation.h>
#import"employee.h"
@implementation employee
-(void)setename:(NSString *)str
{
	name=str;
}
-(void)setdomain:(NSString*)str
{
	dom=str;
}

-(void)setide:(int)x
{
	eID=x;
}
-(void)disp
{
	NSLog(@"Name is %@\n",name);
	NSLog(@"Id is %d\n",eID);
	NSLog(@"Domain is %@\n",dom);

}
@synthesize name,eID,dom;

@end