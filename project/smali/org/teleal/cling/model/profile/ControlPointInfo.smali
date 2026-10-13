.class public Lorg/teleal/cling/model/profile/ControlPointInfo;
.super Ljava/lang/Object;
.source "ControlPointInfo.java"


# instance fields
.field headers:Lorg/teleal/cling/model/message/UpnpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/profile/ControlPointInfo;-><init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V
    .locals 0
    .param p1, "headers"    # Lorg/teleal/cling/model/message/UpnpHeaders;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/model/profile/ControlPointInfo;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 37
    return-void
.end method


# virtual methods
.method public getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/model/profile/ControlPointInfo;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    return-object v0
.end method
