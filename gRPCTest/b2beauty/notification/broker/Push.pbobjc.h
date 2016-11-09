// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: b2beauty/notification/broker/push.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum Push_Priority

typedef GPB_ENUM(Push_Priority) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Push_Priority_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Push_Priority_Normal = 0,
  Push_Priority_High = 1,
};

GPBEnumDescriptor *Push_Priority_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Push_Priority_IsValidValue(int32_t value);

#pragma mark - Enum Push_Platform

typedef GPB_ENUM(Push_Platform) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Push_Platform_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Push_Platform_Ios = 0,
  Push_Platform_Android = 1,
};

GPBEnumDescriptor *Push_Platform_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Push_Platform_IsValidValue(int32_t value);

#pragma mark - PushRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface PushRoot : GPBRootObject
@end

#pragma mark - Push

typedef GPB_ENUM(Push_FieldNumber) {
  Push_FieldNumber_Platform = 1,
  Push_FieldNumber_Priority = 2,
  Push_FieldNumber_To = 3,
  Push_FieldNumber_Message = 4,
  Push_FieldNumber_Data_p = 5,
};

@interface Push : GPBMessage

@property(nonatomic, readwrite) Push_Platform platform;

@property(nonatomic, readwrite) Push_Priority priority;

@property(nonatomic, readwrite, copy, null_resettable) NSString *to;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *data_p;
/** The number of items in @c data_p without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger data_p_Count;

@end

/**
 * Fetches the raw value of a @c Push's @c platform property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Push_Platform_RawValue(Push *message);
/**
 * Sets the raw value of an @c Push's @c platform property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetPush_Platform_RawValue(Push *message, int32_t value);

/**
 * Fetches the raw value of a @c Push's @c priority property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Push_Priority_RawValue(Push *message);
/**
 * Sets the raw value of an @c Push's @c priority property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetPush_Priority_RawValue(Push *message, int32_t value);

#pragma mark - PushReply

typedef GPB_ENUM(PushReply_FieldNumber) {
  PushReply_FieldNumber_Id_p = 1,
};

@interface PushReply : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)