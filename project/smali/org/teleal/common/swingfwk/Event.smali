.class public interface abstract Lorg/teleal/common/swingfwk/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAY",
        "LOAD:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addFiredInController(Lorg/teleal/common/swingfwk/Controller;)V
.end method

.method public abstract alreadyFired(Lorg/teleal/common/swingfwk/Controller;)Z
.end method

.method public abstract getPayload()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAY",
            "LOAD;"
        }
    .end annotation
.end method
