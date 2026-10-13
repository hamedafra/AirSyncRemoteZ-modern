.class public interface abstract Lorg/teleal/cling/controlpoint/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"


# virtual methods
.method public abstract execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V
.end method

.method public abstract execute(Lorg/teleal/cling/controlpoint/SubscriptionCallback;)V
.end method

.method public abstract getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
.end method

.method public abstract getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
.end method

.method public abstract getRegistry()Lorg/teleal/cling/registry/Registry;
.end method

.method public abstract search()V
.end method

.method public abstract search(I)V
.end method

.method public abstract search(Lorg/teleal/cling/model/message/header/UpnpHeader;)V
.end method

.method public abstract search(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V
.end method
