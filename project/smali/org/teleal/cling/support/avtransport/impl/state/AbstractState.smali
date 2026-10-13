.class public abstract Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;
.super Ljava/lang/Object;
.source "AbstractState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/teleal/cling/support/model/AVTransport;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transport:Lorg/teleal/cling/support/model/AVTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/AVTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;, "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState<TT;>;"
    .local p1, "transport":Lorg/teleal/cling/support/model/AVTransport;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->transport:Lorg/teleal/cling/support/model/AVTransport;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract getCurrentTransportActions()[Lorg/teleal/cling/support/model/TransportAction;
.end method

.method public getTransport()Lorg/teleal/cling/support/model/AVTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;, "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState<TT;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->transport:Lorg/teleal/cling/support/model/AVTransport;

    return-object v0
.end method
