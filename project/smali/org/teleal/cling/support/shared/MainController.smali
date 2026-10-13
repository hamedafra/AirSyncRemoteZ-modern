.class public abstract Lorg/teleal/cling/support/shared/MainController;
.super Lorg/teleal/common/swingfwk/AbstractController;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/swingfwk/AbstractController",
        "<",
        "Ljavax/swing/JFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final logController:Lorg/teleal/common/swingfwk/logging/LogController;

.field private final logPanel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/util/List;)V
    .locals 6
    .param p1, "view"    # Ljavax/swing/JFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/swing/JFrame;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "logCategories":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/AbstractController;-><init>(Ljava/awt/Container;)V

    .line 58
    :try_start_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    const-string v2, "sun.awt.exception.handler"

    const-class v3, Lorg/teleal/cling/support/shared/AWTExceptionHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/support/shared/MainController$1;

    invoke-direct {v3, p0}, Lorg/teleal/cling/support/shared/MainController$1;-><init>(Lorg/teleal/cling/support/shared/MainController;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 76
    new-instance v2, Lorg/teleal/cling/support/shared/MainController$2;

    invoke-direct {v2, p0, p0, p2}, Lorg/teleal/cling/support/shared/MainController$2;-><init>(Lorg/teleal/cling/support/shared/MainController;Lorg/teleal/common/swingfwk/Controller;Ljava/util/List;)V

    iput-object v2, p0, Lorg/teleal/cling/support/shared/MainController;->logController:Lorg/teleal/common/swingfwk/logging/LogController;

    .line 89
    iget-object v2, p0, Lorg/teleal/cling/support/shared/MainController;->logController:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object v2

    check-cast v2, Ljavax/swing/JPanel;

    iput-object v2, p0, Lorg/teleal/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    .line 90
    iget-object v2, p0, Lorg/teleal/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    const/4 v3, 0x5

    invoke-static {v3, v5, v5, v5}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 94
    new-instance v1, Lorg/teleal/cling/support/shared/MainController$3;

    invoke-direct {v1, p0}, Lorg/teleal/cling/support/shared/MainController$3;-><init>(Lorg/teleal/cling/support/shared/MainController;)V

    .line 99
    .local v1, "handler":Ljava/util/logging/Handler;
    const-string v2, "java.util.logging.config.file"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/logging/Handler;

    .line 100
    aput-object v1, v2, v5

    invoke-static {v2}, Lorg/teleal/common/logging/LoggingUtil;->resetRootHandler([Ljava/util/logging/Handler;)V

    .line 104
    :goto_1
    return-void

    .line 59
    .end local v1    # "handler":Ljava/util/logging/Handler;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load native look and feel: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "handler":Ljava/util/logging/Handler;
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lorg/teleal/cling/support/shared/MainController;)Lorg/teleal/common/swingfwk/logging/LogController;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController;->logController:Lorg/teleal/common/swingfwk/logging/LogController;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lorg/teleal/common/swingfwk/AbstractController;->dispose()V

    .line 125
    sget-object v0, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;->INSTANCE:Ljavax/swing/JWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JWindow;->setVisible(Z)V

    .line 126
    new-instance v0, Lorg/teleal/cling/support/shared/MainController$4;

    invoke-direct {v0, p0}, Lorg/teleal/cling/support/shared/MainController$4;-><init>(Lorg/teleal/cling/support/shared/MainController;)V

    .line 131
    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/MainController$4;->start()V

    .line 132
    return-void
.end method

.method public getLogController()Lorg/teleal/common/swingfwk/logging/LogController;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController;->logController:Lorg/teleal/common/swingfwk/logging/LogController;

    return-object v0
.end method

.method public getLogPanel()Ljavax/swing/JPanel;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/teleal/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method public abstract getUpnpService()Lorg/teleal/cling/UpnpService;
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-direct {v0, p1, p2}, Lorg/teleal/common/swingfwk/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/shared/MainController;->log(Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    .line 116
    return-void
.end method

.method public log(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
    .locals 1
    .param p1, "message"    # Lorg/teleal/common/swingfwk/logging/LogMessage;

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/teleal/cling/support/shared/MainController;->getLogController()Lorg/teleal/common/swingfwk/logging/LogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/teleal/common/swingfwk/logging/LogController;->pushMessage(Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    .line 120
    return-void
.end method
