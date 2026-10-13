.class public Lorg/teleal/cling/support/model/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/ProtocolInfo$DLNAFlags;
    }
.end annotation


# static fields
.field public static final TRAILING_ZEROS:Ljava/lang/String; = "000000000000000000000000"

.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected additionalInfo:Ljava/lang/String;

.field protected contentFormat:Ljava/lang/String;

.field protected network:Ljava/lang/String;

.field protected protocol:Lorg/teleal/cling/support/model/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 49
    const-string v1, "*"

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 50
    const-string v1, "*"

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 51
    const-string v1, "*"

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 54
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 58
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse ProtocolInfo string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/teleal/cling/support/model/Protocol;->valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 61
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 62
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Lorg/teleal/cling/support/model/Protocol;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "contentFormat"    # Ljava/lang/String;
    .param p4, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 49
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 50
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 51
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 73
    iput-object p2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;)V
    .locals 1
    .param p1, "contentFormatMimeType"    # Lorg/teleal/common/util/MimeType;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 49
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 50
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 51
    const-string v0, "*"

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    .line 68
    invoke-virtual {p1}, Lorg/teleal/common/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 103
    check-cast v0, Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 105
    .local v0, "that":Lorg/teleal/cling/support/model/ProtocolInfo;
    iget-object v3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 106
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 107
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 108
    :cond_6
    iget-object v3, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormatMimeType()Lorg/teleal/common/util/MimeType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lorg/teleal/cling/support/model/Protocol;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Protocol;->hashCode()I

    move-result v0

    .line 116
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 118
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 119
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->protocol:Lorg/teleal/cling/support/model/Protocol;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/teleal/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
