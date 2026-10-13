.class public Lorg/teleal/cling/model/ExpirationDetails;
.super Ljava/lang/Object;
.source "ExpirationDetails.java"


# static fields
.field public static final UNLIMITED_AGE:I

.field private static simpleName:Ljava/lang/String;


# instance fields
.field private lastRefreshTimestampSeconds:J

.field private maxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/ExpirationDetails;->simpleName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 30
    invoke-virtual {p0}, Lorg/teleal/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxAgeSeconds"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 30
    invoke-virtual {p0}, Lorg/teleal/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 36
    iput p1, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 37
    return-void
.end method


# virtual methods
.method protected getCurrentTimestampSeconds()J
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastRefreshTimestampSeconds()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    return-wide v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    return v0
.end method

.method public getSecondsUntilExpiration()J
    .locals 4

    .prologue
    .line 71
    iget v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-nez v0, :cond_0

    .line 72
    const-wide/32 v0, 0x7fffffff

    .line 71
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    iget-wide v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    iget v2, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/teleal/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public hasExpired()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v0

    return v0
.end method

.method public hasExpired(Z)Z
    .locals 6
    .param p1, "halfTime"    # Z

    .prologue
    const/4 v1, 0x1

    .line 65
    iget v0, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-eqz v0, :cond_1

    .line 66
    iget-wide v2, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    iget v4, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    div-int v0, v4, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lorg/teleal/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v4

    .line 65
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setLastRefreshTimestampSeconds(J)V
    .locals 1
    .param p1, "lastRefreshTimestampSeconds"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lorg/teleal/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 49
    return-void
.end method

.method public stampLastRefresh()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/model/ExpirationDetails;->setLastRefreshTimestampSeconds(J)V

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/teleal/cling/model/ExpirationDetails;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MAX AGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/teleal/cling/model/ExpirationDetails;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
