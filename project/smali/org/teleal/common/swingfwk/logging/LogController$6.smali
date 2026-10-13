.class Lorg/teleal/common/swingfwk/logging/LogController$6;
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
    .line 224
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$6;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 6
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/teleal/common/swingfwk/logging/LogController$6;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v4}, Lorg/teleal/common/swingfwk/logging/LogController;->getSelectedMessages()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/logging/LogMessage;

    .line 229
    .local v1, "message":Lorg/teleal/common/swingfwk/logging/LogMessage;
    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/logging/LogMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    .end local v1    # "message":Lorg/teleal/common/swingfwk/logging/LogMessage;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/teleal/common/swingfwk/Application;->copyToClipboard(Ljava/lang/String;)V

    .line 232
    return-void
.end method
