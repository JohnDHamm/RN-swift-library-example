#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(RNTestWrapper, NSObject)

RCT_EXTERN_METHOD(callbackMethod: (RCTResponseSenderBlock)callback)

@end
