.class Lorg/teleal/common/swingfwk/logging/LogController$7;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogController;->initializeToolBar(Lorg/teleal/common/swingfwk/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/swingfwk/logging/LogController;


# direct methods
.method constructor <init>(Lorg/teleal/common/swingfwk/logging/LogController;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$7;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 239
    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController$7;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/logging/LogController;->getSelectedMessages()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$7;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-virtual {v2, v1}, Lorg/teleal/common/swingfwk/logging/LogController;->expand(Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    goto :goto_0
.end method
