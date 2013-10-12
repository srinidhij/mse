#import "metrics.h"
@implementation metric 
-(id)init {
	if((self = [super init])) {
        metrics = [[NSMutableDictionary alloc] init];
    }
    return self;
}
-(void)addMetric:(NSString*)metricKey withValue:(int)metricValue {
	[metrics setValue:[NSNumber numberWithInt:metricValue] forKey:metricKey];
}
-(void)print {
	for (id key in [metrics allKeys])
		if([key length]>=5 && ([[key substringFromIndex: [key length] - 5] isEqualToString:@"meter"])) {
			id obj = [metrics objectForKey: key];
			NSLog(@"%@=>%@",key,obj);
		}
}
@end