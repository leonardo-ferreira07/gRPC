// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: b2beauty/notification/notification.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import <B2Beauty-ProtoRPC/Notification.pbobjc.h>
 #import <B2Beauty-ProtoRPC/DevicePlatform.pbobjc.h>
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - B2BNotificationNotificationRoot

@implementation B2BNotificationNotificationRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - B2BNotificationNotificationRoot_FileDescriptor

static GPBFileDescriptor *B2BNotificationNotificationRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"b2beauty.notification"
                                                 objcPrefix:@"B2BNotification"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - B2BNotificationSendNotificationRequest

@implementation B2BNotificationSendNotificationRequest

@dynamic type;
@dynamic app;
@dynamic devicesArray, devicesArray_Count;
@dynamic phone;
@dynamic message;
@dynamic deepLink;
@dynamic businessId;
@dynamic clientshipId;
@dynamic userId;

typedef struct B2BNotificationSendNotificationRequest__storage_ {
  uint32_t _has_storage_[1];
  B2BNotificationSendNotificationRequest_Type type;
  B2BNotificationSendNotificationRequest_App app;
  NSMutableArray *devicesArray;
  NSString *phone;
  NSString *message;
  NSString *deepLink;
  NSString *businessId;
  NSString *clientshipId;
  NSString *userId;
} B2BNotificationSendNotificationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = B2BNotificationSendNotificationRequest_Type_EnumDescriptor,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_Type,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "app",
        .dataTypeSpecific.enumDescFunc = B2BNotificationSendNotificationRequest_App_EnumDescriptor,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_App,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, app),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "devicesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(B2BNotificationSendNotificationRequest_Device),
        .number = B2BNotificationSendNotificationRequest_FieldNumber_DevicesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, devicesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "phone",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_Phone,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, phone),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "message",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_Message,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "deepLink",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_DeepLink,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, deepLink),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "businessId",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_BusinessId,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, businessId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "clientshipId",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_ClientshipId,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, clientshipId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "userId",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_FieldNumber_UserId,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest__storage_, userId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[B2BNotificationSendNotificationRequest class]
                                     rootClass:[B2BNotificationNotificationRoot class]
                                          file:B2BNotificationNotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(B2BNotificationSendNotificationRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t B2BNotificationSendNotificationRequest_Type_RawValue(B2BNotificationSendNotificationRequest *message) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetB2BNotificationSendNotificationRequest_Type_RawValue(B2BNotificationSendNotificationRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t B2BNotificationSendNotificationRequest_App_RawValue(B2BNotificationSendNotificationRequest *message) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_FieldNumber_App];
  return GPBGetMessageInt32Field(message, field);
}

void SetB2BNotificationSendNotificationRequest_App_RawValue(B2BNotificationSendNotificationRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_FieldNumber_App];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum B2BNotificationSendNotificationRequest_App

GPBEnumDescriptor *B2BNotificationSendNotificationRequest_App_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Beautydate\000Az\000";
    static const int32_t values[] = {
        B2BNotificationSendNotificationRequest_App_Beautydate,
        B2BNotificationSendNotificationRequest_App_Az,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(B2BNotificationSendNotificationRequest_App)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:B2BNotificationSendNotificationRequest_App_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL B2BNotificationSendNotificationRequest_App_IsValidValue(int32_t value__) {
  switch (value__) {
    case B2BNotificationSendNotificationRequest_App_Beautydate:
    case B2BNotificationSendNotificationRequest_App_Az:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum B2BNotificationSendNotificationRequest_Type

GPBEnumDescriptor *B2BNotificationSendNotificationRequest_Type_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Welcome\000WelcomeFromSync\000WelcomeFromBusin"
        "ess\000AppointmentConfirmation\000AppointmentR"
        "escheduled\000AppointmentCancelled\000Appointm"
        "entReminder\000ClientArrived\000AppointmentPos"
        "tSales\000";
    static const int32_t values[] = {
        B2BNotificationSendNotificationRequest_Type_Welcome,
        B2BNotificationSendNotificationRequest_Type_WelcomeFromSync,
        B2BNotificationSendNotificationRequest_Type_WelcomeFromBusiness,
        B2BNotificationSendNotificationRequest_Type_AppointmentConfirmation,
        B2BNotificationSendNotificationRequest_Type_AppointmentRescheduled,
        B2BNotificationSendNotificationRequest_Type_AppointmentCancelled,
        B2BNotificationSendNotificationRequest_Type_AppointmentReminder,
        B2BNotificationSendNotificationRequest_Type_ClientArrived,
        B2BNotificationSendNotificationRequest_Type_AppointmentPostSales,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(B2BNotificationSendNotificationRequest_Type)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:B2BNotificationSendNotificationRequest_Type_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL B2BNotificationSendNotificationRequest_Type_IsValidValue(int32_t value__) {
  switch (value__) {
    case B2BNotificationSendNotificationRequest_Type_Welcome:
    case B2BNotificationSendNotificationRequest_Type_WelcomeFromSync:
    case B2BNotificationSendNotificationRequest_Type_WelcomeFromBusiness:
    case B2BNotificationSendNotificationRequest_Type_AppointmentConfirmation:
    case B2BNotificationSendNotificationRequest_Type_AppointmentRescheduled:
    case B2BNotificationSendNotificationRequest_Type_AppointmentCancelled:
    case B2BNotificationSendNotificationRequest_Type_AppointmentReminder:
    case B2BNotificationSendNotificationRequest_Type_ClientArrived:
    case B2BNotificationSendNotificationRequest_Type_AppointmentPostSales:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - B2BNotificationSendNotificationRequest_Device

@implementation B2BNotificationSendNotificationRequest_Device

@dynamic platform;
@dynamic token;
@dynamic lastSignIn;

typedef struct B2BNotificationSendNotificationRequest_Device__storage_ {
  uint32_t _has_storage_[1];
  B2BTypeDevicePlatform platform;
  int32_t lastSignIn;
  NSString *token;
} B2BNotificationSendNotificationRequest_Device__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "platform",
        .dataTypeSpecific.enumDescFunc = B2BTypeDevicePlatform_EnumDescriptor,
        .number = B2BNotificationSendNotificationRequest_Device_FieldNumber_Platform,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest_Device__storage_, platform),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "token",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_Device_FieldNumber_Token,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest_Device__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "lastSignIn",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationRequest_Device_FieldNumber_LastSignIn,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationRequest_Device__storage_, lastSignIn),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[B2BNotificationSendNotificationRequest_Device class]
                                     rootClass:[B2BNotificationNotificationRoot class]
                                          file:B2BNotificationNotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(B2BNotificationSendNotificationRequest_Device__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(B2BNotificationSendNotificationRequest)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t B2BNotificationSendNotificationRequest_Device_Platform_RawValue(B2BNotificationSendNotificationRequest_Device *message) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest_Device descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_Device_FieldNumber_Platform];
  return GPBGetMessageInt32Field(message, field);
}

void SetB2BNotificationSendNotificationRequest_Device_Platform_RawValue(B2BNotificationSendNotificationRequest_Device *message, int32_t value) {
  GPBDescriptor *descriptor = [B2BNotificationSendNotificationRequest_Device descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationSendNotificationRequest_Device_FieldNumber_Platform];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - B2BNotificationSendNotificationResponse

@implementation B2BNotificationSendNotificationResponse

@dynamic success;
@dynamic id_p;

typedef struct B2BNotificationSendNotificationResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
} B2BNotificationSendNotificationResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "success",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationResponse_FieldNumber_Success,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationSendNotificationResponse_FieldNumber_Id_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(B2BNotificationSendNotificationResponse__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[B2BNotificationSendNotificationResponse class]
                                     rootClass:[B2BNotificationNotificationRoot class]
                                          file:B2BNotificationNotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(B2BNotificationSendNotificationResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - B2BNotificationTrackNotificationRequest

@implementation B2BNotificationTrackNotificationRequest

@dynamic event;
@dynamic id_p;

typedef struct B2BNotificationTrackNotificationRequest__storage_ {
  uint32_t _has_storage_[1];
  B2BNotificationTrackNotificationRequest_Event event;
  NSString *id_p;
} B2BNotificationTrackNotificationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "event",
        .dataTypeSpecific.enumDescFunc = B2BNotificationTrackNotificationRequest_Event_EnumDescriptor,
        .number = B2BNotificationTrackNotificationRequest_FieldNumber_Event,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(B2BNotificationTrackNotificationRequest__storage_, event),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationTrackNotificationRequest_FieldNumber_Id_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(B2BNotificationTrackNotificationRequest__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[B2BNotificationTrackNotificationRequest class]
                                     rootClass:[B2BNotificationNotificationRoot class]
                                          file:B2BNotificationNotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(B2BNotificationTrackNotificationRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t B2BNotificationTrackNotificationRequest_Event_RawValue(B2BNotificationTrackNotificationRequest *message) {
  GPBDescriptor *descriptor = [B2BNotificationTrackNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationTrackNotificationRequest_FieldNumber_Event];
  return GPBGetMessageInt32Field(message, field);
}

void SetB2BNotificationTrackNotificationRequest_Event_RawValue(B2BNotificationTrackNotificationRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [B2BNotificationTrackNotificationRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:B2BNotificationTrackNotificationRequest_FieldNumber_Event];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum B2BNotificationTrackNotificationRequest_Event

GPBEnumDescriptor *B2BNotificationTrackNotificationRequest_Event_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Received\000Opened\000";
    static const int32_t values[] = {
        B2BNotificationTrackNotificationRequest_Event_Received,
        B2BNotificationTrackNotificationRequest_Event_Opened,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(B2BNotificationTrackNotificationRequest_Event)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:B2BNotificationTrackNotificationRequest_Event_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL B2BNotificationTrackNotificationRequest_Event_IsValidValue(int32_t value__) {
  switch (value__) {
    case B2BNotificationTrackNotificationRequest_Event_Received:
    case B2BNotificationTrackNotificationRequest_Event_Opened:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - B2BNotificationTrackNotificationResponse

@implementation B2BNotificationTrackNotificationResponse

@dynamic success;
@dynamic id_p;

typedef struct B2BNotificationTrackNotificationResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
} B2BNotificationTrackNotificationResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "success",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationTrackNotificationResponse_FieldNumber_Success,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = B2BNotificationTrackNotificationResponse_FieldNumber_Id_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(B2BNotificationTrackNotificationResponse__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[B2BNotificationTrackNotificationResponse class]
                                     rootClass:[B2BNotificationNotificationRoot class]
                                          file:B2BNotificationNotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(B2BNotificationTrackNotificationResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)