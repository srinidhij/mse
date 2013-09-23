#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize BillAmt;
@synthesize TaxAmt;
@synthesize TotalAmt;
@synthesize BillType;

-(void) print
{
	NSLog(@"Amount is %d \n", BillAmt);
	if(BillType==1)
	{
		
		NSLog(@"bill Type is Finished Goods\n");
	}
	else if(BillType==2)
	{
			NSLog(@"bill Type is Grocery\n");
	}
	NSLog(@"TaxAmt= %d \n", TaxAmt);
	NSLog(@"TotalAmt =%d \n", TotalAmt);
	
}
@end