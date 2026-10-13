.class public final enum Lorg/teleal/cling/support/model/RecordQualityMode;
.super Ljava/lang/Enum;
.source "RecordQualityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/RecordQualityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASIC:Lorg/teleal/cling/support/model/RecordQualityMode;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum EP:Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum HIGH:Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum LP:Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum MEDIUM:Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

.field public static final enum SP:Lorg/teleal/cling/support/model/RecordQualityMode;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "EP"

    const-string v2, "0:EP"

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->EP:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "LP"

    const-string v2, "1:LP"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->LP:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 32
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "SP"

    const-string v2, "2:SP"

    invoke-direct {v0, v1, v6, v2}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->SP:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "BASIC"

    const-string v2, "0:BASIC"

    invoke-direct {v0, v1, v7, v2}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->BASIC:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 34
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "MEDIUM"

    const-string v2, "1:MEDIUM"

    invoke-direct {v0, v1, v8, v2}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 35
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "HIGH"

    const/4 v2, 0x5

    const-string v3, "2:HIGH"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->HIGH:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x6

    const-string v3, "NOT_IMPLEMENTED"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/teleal/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->EP:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->LP:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->SP:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->BASIC:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/RecordQualityMode;->HIGH:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordQualityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocolString"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/teleal/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/RecordQualityMode;

    return-object v0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-static {p0}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "strings":[Ljava/lang/String;
    if-nez v3, :cond_0

    new-array v4, v5, [Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 69
    :goto_0
    return-object v4

    .line 61
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/RecordQualityMode;>;"
    array-length v7, v3

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/teleal/cling/support/model/RecordQualityMode;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/teleal/cling/support/model/RecordQualityMode;

    goto :goto_0

    .line 62
    :cond_1
    aget-object v2, v3, v6

    .line 63
    .local v2, "rqm":Ljava/lang/String;
    invoke-static {}, Lorg/teleal/cling/support/model/RecordQualityMode;->values()[Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_2
    if-lt v4, v9, :cond_2

    .line 62
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 63
    :cond_2
    aget-object v0, v8, v4

    .line 64
    .local v0, "recordQualityMode":Lorg/teleal/cling/support/model/RecordQualityMode;
    iget-object v10, v0, Lorg/teleal/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lorg/teleal/cling/support/model/RecordQualityMode;->values()[Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid record quality mode string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    aget-object v0, v2, v1

    .line 51
    .local v0, "recordQualityMode":Lorg/teleal/cling/support/model/RecordQualityMode;
    iget-object v4, v0, Lorg/teleal/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    return-object v0

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordQualityMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/RecordQualityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/teleal/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    return-object v0
.end method
