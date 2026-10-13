.class public interface abstract Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
.super Ljava/lang/Object;
.source "AVTransportStateMachine.java"

# interfaces
.implements Lorg/teleal/common/statemachine/StateMachine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/common/statemachine/StateMachine",
        "<",
        "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Ljava/lang/String;)V
.end method

.method public abstract previous()V
.end method

.method public abstract record()V
.end method

.method public abstract seek(Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V
.end method

.method public abstract setNextTransportURI(Ljava/net/URI;Ljava/lang/String;)V
.end method

.method public abstract setTransportURI(Ljava/net/URI;Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
