.class public Lorg/teleal/cling/support/shared/TextExpandEvent;
.super Lorg/teleal/common/swingfwk/DefaultEvent;
.source "TextExpandEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/swingfwk/DefaultEvent",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/DefaultEvent;-><init>(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
