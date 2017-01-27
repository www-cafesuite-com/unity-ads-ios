#import "TestUtilities.h"

@implementation TestUtilities

+ (NSString *)getTestServerAddress {
    NSString *testServerAddress = [NSString stringWithFormat:@"%@", @"http://terminal.applifier.info:18080"];
    
    if ([[[NSBundle mainBundle] objectForInfoDictionaryKey:@"UADSTestServerAddress"] isKindOfClass:[NSString class]]) {
        testServerAddress = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"UADSTestServerAddress"];
    }
    
    return testServerAddress;
}

+ (NSString *)getTestVideoUrl {
    return [NSString stringWithFormat:@"%@/%@", [TestUtilities getTestServerAddress], @"blue_test_trailer.mp4"];
}

+ (int)getTestVideoExpectedSize {
    return 134924;
}

@end
