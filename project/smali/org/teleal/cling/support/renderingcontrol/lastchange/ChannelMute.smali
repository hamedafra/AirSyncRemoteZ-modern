.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;
.super Ljava/lang/Object;
.source "ChannelMute.java"


# instance fields
.field protected channel:Lorg/teleal/cling/support/model/Channel;

.field protected mute:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/Channel;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "channel"    # Lorg/teleal/cling/support/model/Channel;
    .param p2, "mute"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->channel:Lorg/teleal/cling/support/model/Channel;

    .line 32
    iput-object p2, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->mute:Ljava/lang/Boolean;

    .line 33
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/teleal/cling/support/model/Channel;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->channel:Lorg/teleal/cling/support/model/Channel;

    return-object v0
.end method

.method public getMute()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->mute:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->getMute()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;->getChannel()Lorg/teleal/cling/support/model/Channel;

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
