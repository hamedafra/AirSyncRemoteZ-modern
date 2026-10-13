.class public final enum Lorg/teleal/cling/support/model/TransportAction;
.super Ljava/lang/Enum;
.source "TransportAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/TransportAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Next:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Pause:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Play:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Previous:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Record:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Seek:Lorg/teleal/cling/support/model/TransportAction;

.field public static final enum Stop:Lorg/teleal/cling/support/model/TransportAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Play"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Play:Lorg/teleal/cling/support/model/TransportAction;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Stop:Lorg/teleal/cling/support/model/TransportAction;

    .line 32
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Pause:Lorg/teleal/cling/support/model/TransportAction;

    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Seek"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Seek:Lorg/teleal/cling/support/model/TransportAction;

    .line 34
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Next"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Next:Lorg/teleal/cling/support/model/TransportAction;

    .line 35
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Previous"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Previous:Lorg/teleal/cling/support/model/TransportAction;

    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/TransportAction;

    const-string v1, "Record"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->Record:Lorg/teleal/cling/support/model/TransportAction;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/teleal/cling/support/model/TransportAction;

    sget-object v1, Lorg/teleal/cling/support/model/TransportAction;->Play:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/TransportAction;->Stop:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/TransportAction;->Pause:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/TransportAction;->Seek:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/TransportAction;->Next:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/TransportAction;->Previous:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/TransportAction;->Record:Lorg/teleal/cling/support/model/TransportAction;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/TransportAction;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/TransportAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/TransportAction;

    return-object v0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/TransportAction;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-static {p0}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "strings":[Ljava/lang/String;
    if-nez v1, :cond_0

    new-array v4, v5, [Lorg/teleal/cling/support/model/TransportAction;

    .line 50
    :goto_0
    return-object v4

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/TransportAction;>;"
    array-length v7, v1

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/teleal/cling/support/model/TransportAction;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/teleal/cling/support/model/TransportAction;

    goto :goto_0

    .line 42
    :cond_1
    aget-object v3, v1, v6

    .line 43
    .local v3, "taString":Ljava/lang/String;
    invoke-static {}, Lorg/teleal/cling/support/model/TransportAction;->values()[Lorg/teleal/cling/support/model/TransportAction;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_2
    if-lt v4, v9, :cond_2

    .line 42
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 43
    :cond_2
    aget-object v2, v8, v4

    .line 44
    .local v2, "ta":Lorg/teleal/cling/support/model/TransportAction;
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/TransportAction;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static values()[Lorg/teleal/cling/support/model/TransportAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/TransportAction;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportAction;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/TransportAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
