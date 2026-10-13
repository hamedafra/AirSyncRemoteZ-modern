.class public Lcom/hisilicon/multiscreen/http/HiHttpException;
.super Ljava/lang/RuntimeException;
.source "HiHttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1e240L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
