.class public Lorg/teleal/cling/support/model/Connection$StatusInfo;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusInfo"
.end annotation


# instance fields
.field private lastError:Lorg/teleal/cling/support/model/Connection$Error;

.field private status:Lorg/teleal/cling/support/model/Connection$Status;

.field private uptimeSeconds:J


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/Connection$Status;JLorg/teleal/cling/support/model/Connection$Error;)V
    .locals 0
    .param p1, "status"    # Lorg/teleal/cling/support/model/Connection$Status;
    .param p2, "uptimeSeconds"    # J
    .param p4, "lastError"    # Lorg/teleal/cling/support/model/Connection$Error;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->status:Lorg/teleal/cling/support/model/Connection$Status;

    .line 39
    iput-wide p2, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 40
    iput-object p4, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->lastError:Lorg/teleal/cling/support/model/Connection$Error;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/Connection$Status;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/model/Connection$Error;)V
    .locals 2
    .param p1, "status"    # Lorg/teleal/cling/support/model/Connection$Status;
    .param p2, "uptime"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p3, "lastError"    # Lorg/teleal/cling/support/model/Connection$Error;

    .prologue
    .line 34
    invoke-virtual {p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/teleal/cling/support/model/Connection$StatusInfo;-><init>(Lorg/teleal/cling/support/model/Connection$Status;JLorg/teleal/cling/support/model/Connection$Error;)V

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 62
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

    .line 64
    check-cast v0, Lorg/teleal/cling/support/model/Connection$StatusInfo;

    .line 66
    .local v0, "that":Lorg/teleal/cling/support/model/Connection$StatusInfo;
    iget-wide v4, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    iget-wide v6, v0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 67
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->lastError:Lorg/teleal/cling/support/model/Connection$Error;

    iget-object v4, v0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->lastError:Lorg/teleal/cling/support/model/Connection$Error;

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 68
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->status:Lorg/teleal/cling/support/model/Connection$Status;

    iget-object v4, v0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->status:Lorg/teleal/cling/support/model/Connection$Status;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLastError()Lorg/teleal/cling/support/model/Connection$Error;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->lastError:Lorg/teleal/cling/support/model/Connection$Error;

    return-object v0
.end method

.method public getStatus()Lorg/teleal/cling/support/model/Connection$Status;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->status:Lorg/teleal/cling/support/model/Connection$Status;

    return-object v0
.end method

.method public getUptime()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Connection$StatusInfo;->getUptimeSeconds()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method

.method public getUptimeSeconds()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 75
    iget-object v1, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->status:Lorg/teleal/cling/support/model/Connection$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/Connection$Status;->hashCode()I

    move-result v0

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    iget-wide v4, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 77
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/Connection$StatusInfo;->lastError:Lorg/teleal/cling/support/model/Connection$Error;

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/Connection$Error;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 78
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Connection$StatusInfo;->getStatus()Lorg/teleal/cling/support/model/Connection$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
