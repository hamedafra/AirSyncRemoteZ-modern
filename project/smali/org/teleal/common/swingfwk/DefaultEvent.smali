.class public Lorg/teleal/common/swingfwk/DefaultEvent;
.super Ljava/lang/Object;
.source "DefaultEvent.java"

# interfaces
.implements Lorg/teleal/common/swingfwk/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAY",
        "LOAD:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/common/swingfwk/Event;"
    }
.end annotation


# instance fields
.field firedInControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/common/swingfwk/Controller;",
            ">;"
        }
    .end annotation
.end field

.field payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPAY",
            "LOAD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->firedInControllers:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAY",
            "LOAD;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    .local p1, "payload":Ljava/lang/Object;, "TPAYLOAD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->firedInControllers:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->payload:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public addFiredInController(Lorg/teleal/common/swingfwk/Controller;)V
    .locals 1
    .param p1, "seenController"    # Lorg/teleal/common/swingfwk/Controller;

    .prologue
    .line 49
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->firedInControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public alreadyFired(Lorg/teleal/common/swingfwk/Controller;)Z
    .locals 1
    .param p1, "controller"    # Lorg/teleal/common/swingfwk/Controller;

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->firedInControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAY",
            "LOAD;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAY",
            "LOAD;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/teleal/common/swingfwk/DefaultEvent;, "Lorg/teleal/common/swingfwk/DefaultEvent<TPAYLOAD;>;"
    .local p1, "payload":Ljava/lang/Object;, "TPAYLOAD;"
    iput-object p1, p0, Lorg/teleal/common/swingfwk/DefaultEvent;->payload:Ljava/lang/Object;

    .line 46
    return-void
.end method
