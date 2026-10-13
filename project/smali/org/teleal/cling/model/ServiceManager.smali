.class public interface abstract Lorg/teleal/cling/model/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EVENTED_STATE_VARIABLES:Ljava/lang/String; = "_EventedStateVariables"


# virtual methods
.method public abstract execute(Lorg/teleal/cling/model/Command;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/Command",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getImplementation()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
.end method

.method public abstract getService()Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/LocalService",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract readEventedStateVariableValues()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
