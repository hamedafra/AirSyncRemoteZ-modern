.class public Lorg/teleal/cling/support/model/TransportSettings;
.super Ljava/lang/Object;
.source "TransportSettings.java"


# instance fields
.field private playMode:Lorg/teleal/cling/support/model/PlayMode;

.field private recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lorg/teleal/cling/support/model/PlayMode;->NORMAL:Lorg/teleal/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    .line 26
    sget-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PlayMode;)V
    .locals 1
    .param p1, "playMode"    # Lorg/teleal/cling/support/model/PlayMode;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lorg/teleal/cling/support/model/PlayMode;->NORMAL:Lorg/teleal/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    .line 26
    sget-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 32
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PlayMode;Lorg/teleal/cling/support/model/RecordQualityMode;)V
    .locals 1
    .param p1, "playMode"    # Lorg/teleal/cling/support/model/PlayMode;
    .param p2, "recQualityMode"    # Lorg/teleal/cling/support/model/RecordQualityMode;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lorg/teleal/cling/support/model/PlayMode;->NORMAL:Lorg/teleal/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    .line 26
    sget-object v0, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    .line 37
    iput-object p2, p0, Lorg/teleal/cling/support/model/TransportSettings;->recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 38
    return-void
.end method


# virtual methods
.method public getPlayMode()Lorg/teleal/cling/support/model/PlayMode;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->playMode:Lorg/teleal/cling/support/model/PlayMode;

    return-object v0
.end method

.method public getRecQualityMode()Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportSettings;->recQualityMode:Lorg/teleal/cling/support/model/RecordQualityMode;

    return-object v0
.end method
