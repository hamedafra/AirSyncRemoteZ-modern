.class public Lorg/teleal/cling/model/message/header/InterfaceMacHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "InterfaceMacHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->setString(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "value"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->setValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, ":"

    invoke-static {v0, v1}, Lorg/teleal/common/util/HexBin;->bytesToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v1, ":"

    invoke-static {p1, v1}, Lorg/teleal/common/util/HexBin;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->setValue(Ljava/lang/Object;)V

    .line 43
    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 44
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid MAC address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
