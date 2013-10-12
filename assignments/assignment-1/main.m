#import "metrics.h"

int main(int argc,const char* argv[]) {
	NSAutoreleasePool *Pool = [[NSAutoreleasePool alloc] init];
	metric *m = [[metric alloc] init];
	[m addMetric:@"centimeter" withValue:(int)10];
	[m addMetric:@"pound" withValue:40];
	[m addMetric:@"ounce" withValue:50];
	[m addMetric:@"kilogram" withValue:20];
	[m addMetric:@"meter" withValue:10];
	[m addMetric:@"yard" withValue:30];
	[m addMetric:@"millimeter" withValue:10];
	[m addMetric:@"kilogram" withValue:10];
	[m addMetric:@"milligram" withValue:20];
	[m addMetric:@"gram" withValue:20];
	[m print];
	[Pool drain];
	return 0;
}