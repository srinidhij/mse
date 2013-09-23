#import <Foundation/Foundation.h>
#import "Bill.h"
#import "CalcTax.h"

int main(int argc, char* argv[])
{	
	Bill *b=[[Bill alloc]init];
	CalcTax *c=[[CalcTax alloc]init];
	int ch, amt;
	char typ[20];
	NSLog(@"Enter the type of Bill\n");
	NSLog(@"----------------------------\n");
	NSLog(@"1.Finished goods 2.Grocery\n");
	NSLog(@"----------------------------\n");
	scanf("%d",&ch);
	[b setBillType:ch];
	NSLog(@"Please Enter the bill amount\n");
	scanf("%d",&amt);
	[b setBillAmt:amt];
	
	[c CalcTaxonBill: b];
	[b print];

	[b release];
	[c release];
	return 0;
}