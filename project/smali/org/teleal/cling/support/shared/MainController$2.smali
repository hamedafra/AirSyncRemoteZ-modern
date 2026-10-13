.class Lorg/teleal/cling/support/shared/MainController$2;
.super Lorg/teleal/common/swingfwk/logging/LogController;
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
.method constructor <init>(Lorg/teleal/cling/support/shared/MainController;Lorg/teleal/common/swingfwk/Controller;Ljava/util/List;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/common/swingfwk/Controller;

    .prologue
    .line 1
    .local p3, "$anonymous1":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/shared/MainController$2;->this$0:Lorg/teleal/cling/support/shared/MainController;

    .line 76
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/swingfwk/logging/LogController;-><init>(Lorg/teleal/common/swingfwk/Controller;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected expand(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
    .locals 2
    .param p1, "logMessage"    # Lorg/teleal/common/swingfwk/logging/LogMessage;

    .prologue
    .line 79
    .line 80
    new-instance v0, Lorg/teleal/cling/support/shared/TextExpandEvent;

    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/shared/TextExpandEvent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/shared/MainController$2;->fireEventGlobal(Lorg/teleal/common/swingfwk/Event;)V

    .line 82
    return-void
.end method

.method protected getParentWindow()Ljava/awt/Frame;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController$2;->this$0:Lorg/teleal/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/MainController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljava/awt/Frame;

    return-object v0
.end method
