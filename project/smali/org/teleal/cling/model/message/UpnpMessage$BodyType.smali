.class public final enum Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
.super Ljava/lang/Enum;
.source "UpnpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

.field public static final enum STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
