.class Lorg/teleal/common/swingfwk/logging/LogController$1;
.super Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogController;-><init>(Lorg/teleal/common/swingfwk/Controller;Lorg/teleal/common/swingfwk/logging/LogController$Expiration;Ljava/util/List;)V
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
    .line 107
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$1;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$1;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->getDebugIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$1;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->getInfoIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$1;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->getTraceIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$1;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method
