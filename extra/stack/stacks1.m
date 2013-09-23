#import<Foundation/Foundation.h>
#import"stacks1.m"
@implementation stacks1
-(void)push:(NSString *)x
{
	[arr insertObject:x atIndex:0];
}
-(void)pop
{
}
-(void)print:(NSMutableArray *)n
{
	NSLog(@"Stack is %@\n",n);
}
@end