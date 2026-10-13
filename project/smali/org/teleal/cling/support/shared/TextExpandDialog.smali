.class public Lorg/teleal/cling/support/shared/TextExpandDialog;
.super Ljavax/swing/JDialog;
.source "TextExpandDialog.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/teleal/cling/support/shared/TextExpandDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/shared/TextExpandDialog;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;)V
    .locals 9
    .param p1, "frame"    # Ljava/awt/Frame;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;)V

    .line 44
    invoke-virtual {p0, v8}, Lorg/teleal/cling/support/shared/TextExpandDialog;->setResizable(Z)V

    .line 46
    new-instance v2, Ljavax/swing/JTextArea;

    invoke-direct {v2}, Ljavax/swing/JTextArea;-><init>()V

    .line 47
    .local v2, "textArea":Ljavax/swing/JTextArea;
    new-instance v3, Ljavax/swing/JScrollPane;

    invoke-direct {v3, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 48
    .local v3, "textPane":Ljavax/swing/JScrollPane;
    new-instance v4, Ljava/awt/Dimension;

    const/16 v5, 0x1f4

    const/16 v6, 0x190

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v4}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 49
    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/shared/TextExpandDialog;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 52
    const-string v4, "<"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ">"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :try_start_0
    new-instance v4, Lorg/teleal/cling/support/shared/TextExpandDialog$1;

    invoke-direct {v4, p0}, Lorg/teleal/cling/support/shared/TextExpandDialog$1;-><init>(Lorg/teleal/cling/support/shared/TextExpandDialog;)V

    .line 59
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lorg/teleal/cling/support/shared/TextExpandDialog$1;->print(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .local v1, "pretty":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v7}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 71
    invoke-virtual {v2, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/teleal/cling/support/shared/TextExpandDialog;->pack()V

    .line 74
    invoke-virtual {p0}, Lorg/teleal/cling/support/shared/TextExpandDialog;->getOwner()Ljava/awt/Window;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/teleal/common/swingfwk/Application;->center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;

    .line 75
    invoke-virtual {p0, v8}, Lorg/teleal/cling/support/shared/TextExpandDialog;->setVisible(Z)V

    .line 76
    return-void

    .line 60
    .end local v1    # "pretty":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/teleal/cling/support/shared/TextExpandDialog;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error pretty printing XML: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 62
    move-object v1, p2

    .line 64
    .restart local v1    # "pretty":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "pretty":Ljava/lang/String;
    :cond_0
    const-string v4, "http-get"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-static {p2}, Lorg/teleal/cling/model/ModelUtil;->commaToNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "pretty":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v1    # "pretty":Ljava/lang/String;
    :cond_1
    move-object v1, p2

    .restart local v1    # "pretty":Ljava/lang/String;
    goto :goto_0
.end method
