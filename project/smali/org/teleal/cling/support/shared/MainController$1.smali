.class Lorg/teleal/cling/support/shared/MainController$1;
.super Ljava/lang/Thread;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/shared/MainController;-><init>(Ljavax/swing/JFrame;Ljava/util/List;)V
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
    iput-object p1, p0, Lorg/teleal/cling/support/shared/MainController$1;->this$0:Lorg/teleal/cling/support/shared/MainController;

    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController$1;->this$0:Lorg/teleal/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/MainController;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController$1;->this$0:Lorg/teleal/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/MainController;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->shutdown()V

    .line 72
    :cond_0
    return-void
.end method
