//#import "b2beauty/notification/broker/Firebase.pbrpc.h"
 #import <B2Beauty-ProtoRPC/Firebase.pbrpc.h>

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation Firebase

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"b2beauty.notification.broker" serviceName:@"Firebase"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark SendPush(Push) returns (PushReply)

- (void)sendPushWithRequest:(Push *)request handler:(void(^)(PushReply *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendPushWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendPushWithRequest:(Push *)request handler:(void(^)(PushReply *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendPush"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PushReply class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
