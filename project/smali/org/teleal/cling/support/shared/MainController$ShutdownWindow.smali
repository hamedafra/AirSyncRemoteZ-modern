.class public Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;
.super Ljavax/swing/JWindow;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/shared/MainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutdownWindow"
.end annotation


# static fields
.field public static final INSTANCE:Ljavax/swing/JWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;

    invoke-direct {v0}, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;-><init>()V

    sput-object v0, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;->INSTANCE:Ljavax/swing/JWindow;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 137
    invoke-direct {p0}, Ljavax/swing/JWindow;-><init>()V

    .line 138
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, "Shutting down, please wait..."

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "shutdownLabel":Ljavax/swing/JLabel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 140
    invoke-virtual {p0}, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 141
    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x12c

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 142
    invoke-virtual {p0}, Lorg/teleal/cling/support/shared/MainController$ShutdownWindow;->pack()V

    .line 143
    invoke-static {p0}, Lorg/teleal/common/swingfwk/Application;->center(Ljava/awt/Window;)Ljava/awt/Window;

    .line 144
    return-void
.end method
