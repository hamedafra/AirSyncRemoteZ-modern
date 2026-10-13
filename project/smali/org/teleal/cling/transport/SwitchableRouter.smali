.class public interface abstract Lorg/teleal/cling/transport/SwitchableRouter;
.super Ljava/lang/Object;
.source "SwitchableRouter.java"

# interfaces
.implements Lorg/teleal/cling/transport/Router;


# virtual methods
.method public abstract disable()Z
.end method

.method public abstract enable()Z
.end method

.method public abstract handleStartFailure(Lorg/teleal/cling/transport/spi/InitializationException;)V
.end method

.method public abstract isEnabled()Z
.end method
