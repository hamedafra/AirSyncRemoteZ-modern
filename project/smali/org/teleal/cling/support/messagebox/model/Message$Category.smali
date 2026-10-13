.class public final enum Lorg/teleal/cling/support/messagebox/model/Message$Category;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/messagebox/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/messagebox/model/Message$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/messagebox/model/Message$Category;

.field public static final enum INCOMING_CALL:Lorg/teleal/cling/support/messagebox/model/Message$Category;

.field public static final enum SCHEDULE_REMINDER:Lorg/teleal/cling/support/messagebox/model/Message$Category;

.field public static final enum SMS:Lorg/teleal/cling/support/messagebox/model/Message$Category;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;

    const-string v1, "SMS"

    const-string v2, "SMS"

    invoke-direct {v0, v1, v3, v2}, Lorg/teleal/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SMS:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    .line 38
    new-instance v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;

    const-string v1, "INCOMING_CALL"

    const-string v2, "Incoming Call"

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    .line 39
    new-instance v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;

    const-string v1, "SCHEDULE_REMINDER"

    const-string v2, "Schedule Reminder"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/support/messagebox/model/Message$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/support/messagebox/model/Message$Category;

    sget-object v1, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SMS:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    aput-object v1, v0, v5

    sput-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->ENUM$VALUES:[Lorg/teleal/cling/support/messagebox/model/Message$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->text:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/messagebox/model/Message$Category;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/messagebox/model/Message$Category;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->ENUM$VALUES:[Lorg/teleal/cling/support/messagebox/model/Message$Category;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/messagebox/model/Message$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
