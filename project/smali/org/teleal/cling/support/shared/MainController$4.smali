.class Lorg/teleal/cling/support/shared/MainController$4;
.super Ljava/lang/Thread;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/shared/MainController;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/shared/MainController;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/shared/MainController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/shared/MainController$4;->this$0:Lorg/teleal/cling/support/shared/MainController;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 130
    return-void
.end method
