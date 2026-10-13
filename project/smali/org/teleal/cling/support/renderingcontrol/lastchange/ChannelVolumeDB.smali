.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;
.super Ljava/lang/Object;
.source "ChannelVolumeDB.java"


# instance fields
.field protected channel:Lorg/teleal/cling/support/model/Channel;

.field protected volumeDB:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/Channel;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "channel"    # Lorg/teleal/cling/support/model/Channel;
    .param p2, "volumeDB"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->channel:Lorg/teleal/cling/support/model/Channel;

    .line 32
    iput-object p2, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->volumeDB:Ljava/lang/Integer;

    .line 33
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/teleal/cling/support/model/Channel;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->channel:Lorg/teleal/cling/support/model/Channel;

    return-object v0
.end method

.method public getVolumeDB()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->volumeDB:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeDB: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getVolumeDB()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getChannel()Lorg/teleal/cling/support/model/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
