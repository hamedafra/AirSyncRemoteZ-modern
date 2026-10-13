.class public final enum Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;
.super Ljava/lang/Enum;
.source "AVTransportErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTENT_BUSY:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum ILLEGAL_MIME_TYPE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum ILLEGAL_SEEK_TARGET:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum INVALID_INSTANCE_ID:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum MEDIA_FULL:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum MEDIA_PROTECTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum NO_CONTENTS:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum PLAYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum READ_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RECORD_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum RESOURCE_NOT_FOUND:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum SEEKMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum TRANSPORT_LOCKED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

.field public static final enum WRITE_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "TRANSITION_NOT_AVAILABLE"

    const/16 v2, 0x2bd

    const-string v3, "The immediate transition from current to desired state not supported"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "NO_CONTENTS"

    const/16 v2, 0x2be

    const-string v3, "The media does not contain any contents that can be played"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->NO_CONTENTS:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "READ_ERROR"

    const/16 v2, 0x2bf

    const-string v3, "The media cannot be read"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->READ_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "PLAYBACK_FORMAT_NOT_SUPPORTED"

    const/16 v2, 0x2c0

    const-string v3, "The storage format of the currently loaded media is not supported for playback"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "TRANSPORT_LOCKED"

    const/16 v2, 0x2c1

    const-string v3, "The transport is \'hold locked\', e.g. with a keyboard lock"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSPORT_LOCKED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 30
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "WRITE_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0x2c2

    const-string v4, "The media cannot be written"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->WRITE_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "MEDIA_PROTECTED"

    const/4 v2, 0x6

    const/16 v3, 0x2c3

    const-string v4, "The media is write-protected or is of a not writable type"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->MEDIA_PROTECTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 32
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RECORD_FORMAT_NOT_SUPPORTED"

    const/4 v2, 0x7

    const/16 v3, 0x2c4

    const-string v4, "The storage format of the currently loaded media is not supported for recording"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RECORD_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 33
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "MEDIA_FULL"

    const/16 v2, 0x8

    const/16 v3, 0x2c5

    const-string v4, "There is no free space left on the loaded media"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->MEDIA_FULL:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 34
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "SEEKMODE_NOT_SUPPORTED"

    const/16 v2, 0x9

    const/16 v3, 0x2c6

    const-string v4, "The specified seek mode is not supported by the device"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 35
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "ILLEGAL_SEEK_TARGET"

    const/16 v2, 0xa

    const/16 v3, 0x2c7

    const-string v4, "The specified seek target is not specified in terms of the seek mode, or is not present on the media"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_SEEK_TARGET:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 36
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "PLAYMODE_NOT_SUPPORTED"

    const/16 v2, 0xb

    const/16 v3, 0x2c8

    const-string v4, "The specified play mode is not supported by the device"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 37
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RECORDQUALITYMODE_NOT_SUPPORTED"

    const/16 v2, 0xc

    const/16 v3, 0x2c9

    const-string v4, "The specified record quality mode is not supported by the device"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 38
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "ILLEGAL_MIME_TYPE"

    const/16 v2, 0xd

    const/16 v3, 0x2ca

    const-string v4, "The specified resource has a MIME-type which is not supported"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_MIME_TYPE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 39
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "CONTENT_BUSY"

    const/16 v2, 0xe

    const/16 v3, 0x2cb

    const-string v4, "The resource is already being played by other means"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->CONTENT_BUSY:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 40
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "RESOURCE_NOT_FOUND"

    const/16 v2, 0xf

    const/16 v3, 0x2cc

    const-string v4, "The specified resource cannot be found in the network"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RESOURCE_NOT_FOUND:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 41
    new-instance v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    const-string v1, "INVALID_INSTANCE_ID"

    const/16 v2, 0x10

    const/16 v3, 0x2ce

    const-string v4, "The specified instanceID is invalid for this AVTransport"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    sget-object v1, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->NO_CONTENTS:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->READ_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->PLAYBACK_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSPORT_LOCKED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->WRITE_ERROR:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->MEDIA_PROTECTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RECORD_FORMAT_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->MEDIA_FULL:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_SEEK_TARGET:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ILLEGAL_MIME_TYPE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->CONTENT_BUSY:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RESOURCE_NOT_FOUND:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->code:I

    .line 48
    iput-object p4, p0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->description:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static getByCode(I)Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 60
    invoke-static {}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->values()[Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 64
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 60
    :cond_1
    aget-object v0, v2, v1

    .line 61
    .local v0, "errorCode":Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;
    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
