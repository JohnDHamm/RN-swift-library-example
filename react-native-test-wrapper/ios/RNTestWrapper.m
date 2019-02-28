#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(RNTestWrapper, NSObject)

RCT_EXTERN_METHOD(callbackMethod: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(
                  getSources: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

@end
