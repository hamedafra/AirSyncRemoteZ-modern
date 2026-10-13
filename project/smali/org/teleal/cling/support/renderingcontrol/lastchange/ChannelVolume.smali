.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;
.super Ljava/lang/Object;
.source "ChannelVolume.java"


# instance fields
.field protected channel:Lorg/teleal/cling/support/model/Channel;

.field protected volume:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/Channel;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "channel"    # Lorg/teleal/cling/support/model/Channel;
    .param p2, "volume"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->channel:Lorg/teleal/cling/support/model/Channel;

    .line 32
    iput-object p2, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->volume:Ljava/lang/Integer;

    .line 33
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/teleal/cling/support/model/Channel;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->channel:Lorg/teleal/cling/support/model/Channel;

    return-object v0
.end method

.method public getVolume()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->volume:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Volume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->getVolume()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;->getChannel()Lorg/teleal/cling/support/model/Channel;

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
