.class public Lorg/teleal/cling/support/model/PositionInfo;
.super Ljava/lang/Object;
.source "PositionInfo.java"


# instance fields
.field private absCount:I

.field private absTime:Ljava/lang/String;

.field private relCount:I

.field private relTime:Ljava/lang/String;

.field private track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field private trackDuration:Ljava/lang/String;

.field private trackMetaData:Ljava/lang/String;

.field private trackURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v1, 0x7fffffff

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 41
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "track"    # J
    .param p3, "trackMetaData"    # Ljava/lang/String;
    .param p4, "trackURI"    # Ljava/lang/String;

    .prologue
    const v1, 0x7fffffff

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 107
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 108
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "track"    # J
    .param p3, "trackDuration"    # Ljava/lang/String;
    .param p4, "trackURI"    # Ljava/lang/String;
    .param p5, "relTime"    # Ljava/lang/String;
    .param p6, "absTime"    # Ljava/lang/String;

    .prologue
    const v1, 0x7fffffff

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 86
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 87
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "track"    # J
    .param p3, "trackDuration"    # Ljava/lang/String;
    .param p4, "trackMetaData"    # Ljava/lang/String;
    .param p5, "trackURI"    # Ljava/lang/String;
    .param p6, "relTime"    # Ljava/lang/String;
    .param p7, "absTime"    # Ljava/lang/String;
    .param p8, "relCount"    # I
    .param p9, "absCount"    # I

    .prologue
    const v1, 0x7fffffff

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 96
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 97
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 102
    iput p8, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 103
    iput p9, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/teleal/cling/model/action/ActionArgumentValue;>;"
    const v4, 0x7fffffff

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v1, "00:00:00"

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v1, "NOT_IMPLEMENTED"

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v1, "00:00:00"

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v1, "00:00:00"

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v4, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v4, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 44
    const-string v1, "Track"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 45
    const-string v1, "TrackDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 46
    const-string v1, "TrackMetaData"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 47
    const-string v1, "TrackURI"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 48
    const-string v1, "RelTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 49
    const-string v1, "AbsTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 51
    :try_start_0
    const-string v1, "RelCount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    :try_start_1
    const-string v1, "AbsCount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "aex":Ljava/lang/Exception;
    iget v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    goto :goto_1

    .line 53
    .end local v0    # "aex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PositionInfo;JJ)V
    .locals 4
    .param p1, "copy"    # Lorg/teleal/cling/support/model/PositionInfo;
    .param p2, "relTimeSeconds"    # J
    .param p4, "absTimeSeconds"    # J

    .prologue
    const v1, 0x7fffffff

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 74
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 75
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 78
    invoke-static {p2, p3}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 79
    invoke-static {p4, p5}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 80
    iget v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    iput v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 81
    iget v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    iput v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PositionInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "copy"    # Lorg/teleal/cling/support/model/PositionInfo;
    .param p2, "relTime"    # Ljava/lang/String;
    .param p3, "absTime"    # Ljava/lang/String;

    .prologue
    const v1, 0x7fffffff

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 32
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 35
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 38
    iput v1, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 63
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 64
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    iput-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 69
    iget v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    iput v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    .line 70
    iget v0, p1, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    iput v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    .line 71
    return-void
.end method


# virtual methods
.method public getAbsCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absCount:I

    return v0
.end method

.method public getAbsTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    return-object v0
.end method

.method public getElapsedPercent()I
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    move-result-wide v0

    .line 158
    .local v0, "elapsed":J
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDurationSeconds()J

    move-result-wide v2

    .line 159
    .local v2, "total":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 160
    :goto_0
    return v4

    :cond_1
    new-instance v4, Ljava/lang/Double;

    long-to-double v6, v0

    long-to-double v8, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method public getRelCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relCount:I

    return v0
.end method

.method public getRelTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->track:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getTrackDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDurationSeconds()J
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->fromTimeString(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrackElapsedSeconds()J
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT_IMPLEMENTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->fromTimeString(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrackMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackRemainingSeconds()J
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDurationSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackURI:Ljava/lang/String;

    return-object v0
.end method

.method public setPositionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "trackDuration"    # Ljava/lang/String;
    .param p2, "relTime"    # Ljava/lang/String;
    .param p3, "absTime"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/teleal/cling/support/model/PositionInfo;->trackDuration:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lorg/teleal/cling/support/model/PositionInfo;->relTime:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lorg/teleal/cling/support/model/PositionInfo;->absTime:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(PositionInfo) Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrack()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RelTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PositionInfo;->getElapsedPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
