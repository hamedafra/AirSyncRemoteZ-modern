.class public Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "OutgoingEventResponseMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 34
    return-void
.end method
