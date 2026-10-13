.class public abstract Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "OutgoingDatagramMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/teleal/cling/model/message/UpnpOperation;",
        ">",
        "Lorg/teleal/cling/model/message/UpnpMessage",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private destinationAddress:Ljava/net/InetAddress;

.field private destinationPort:I


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V
    .locals 0
    .param p2, "destinationAddress"    # Ljava/net/InetAddress;
    .param p3, "destinationPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/teleal/cling/model/message/OutgoingDatagramMessage;, "Lorg/teleal/cling/model/message/OutgoingDatagramMessage<TO;>;"
    .local p1, "operation":Lorg/teleal/cling/model/message/UpnpOperation;, "TO;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 34
    iput-object p2, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 35
    iput p3, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;Ljava/net/InetAddress;I)V
    .locals 0
    .param p3, "body"    # Ljava/lang/Object;
    .param p4, "destinationAddress"    # Ljava/net/InetAddress;
    .param p5, "destinationPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;",
            "Ljava/lang/Object;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/teleal/cling/model/message/OutgoingDatagramMessage;, "Lorg/teleal/cling/model/message/OutgoingDatagramMessage<TO;>;"
    .local p1, "operation":Lorg/teleal/cling/model/message/UpnpOperation;, "TO;"
    .local p2, "bodyType":Lorg/teleal/cling/model/message/UpnpMessage$BodyType;, "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;"
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 40
    iput-object p4, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 41
    iput p5, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    .line 42
    return-void
.end method


# virtual methods
.method public getDestinationAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/teleal/cling/model/message/OutgoingDatagramMessage;, "Lorg/teleal/cling/model/message/OutgoingDatagramMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationPort()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/teleal/cling/model/message/OutgoingDatagramMessage;, "Lorg/teleal/cling/model/message/OutgoingDatagramMessage<TO;>;"
    iget v0, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    return v0
.end method
