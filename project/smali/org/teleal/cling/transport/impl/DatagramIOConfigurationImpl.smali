.class public Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;
.super Ljava/lang/Object;
.source "DatagramIOConfigurationImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/DatagramIOConfiguration;


# instance fields
.field private maxDatagramBytes:I

.field private timeToLive:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    .line 30
    const/16 v0, 0x280

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "timeToLive"    # I
    .param p2, "maxDatagramBytes"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    .line 30
    const/16 v0, 0x280

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    .line 39
    iput p1, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    .line 40
    iput p2, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    .line 41
    return-void
.end method


# virtual methods
.method public getMaxDatagramBytes()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    return v0
.end method

.method public getTimeToLive()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    return v0
.end method

.method public setMaxDatagramBytes(I)V
    .locals 0
    .param p1, "maxDatagramBytes"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    .line 57
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0
    .param p1, "timeToLive"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    .line 49
    return-void
.end method
