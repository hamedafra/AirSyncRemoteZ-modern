.class public Lorg/teleal/common/swingfwk/JPopupMenuButton;
.super Ljavax/swing/JButton;
.source "JPopupMenuButton.java"


# instance fields
.field public popup:Ljavax/swing/JPopupMenu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/swing/Icon;Ljavax/swing/JPopupMenu;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "icon"    # Ljavax/swing/Icon;
    .param p3, "popup"    # Ljavax/swing/JPopupMenu;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 52
    iput-object p3, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 53
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 54
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 56
    new-instance v0, Lorg/teleal/common/swingfwk/JPopupMenuButton$1;

    invoke-direct {v0, p0}, Lorg/teleal/common/swingfwk/JPopupMenuButton$1;-><init>(Lorg/teleal/common/swingfwk/JPopupMenuButton;)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->setModel(Ljavax/swing/ButtonModel;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/swing/JPopupMenu;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "m"    # Ljavax/swing/JPopupMenu;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 46
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 47
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/swing/JPopupMenu;)V
    .locals 2
    .param p1, "m"    # Ljavax/swing/JPopupMenu;

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/swing/JButton;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 39
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 40
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/JPopupMenuButton;->enableEvents(J)V

    .line 41
    return-void
.end method


# virtual methods
.method protected processKeyEvent(Ljava/awt/event/KeyEvent;)V
    .locals 4
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .prologue
    const/16 v3, 0xa

    .line 79
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    .line 80
    .local v0, "id":I
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 82
    iget-object v1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 84
    :cond_1
    invoke-super {p0, p1}, Ljavax/swing/JButton;->processKeyEvent(Ljava/awt/event/KeyEvent;)V

    .line 86
    :cond_2
    return-void
.end method

.method protected processMouseEvent(Ljava/awt/event/MouseEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Ljavax/swing/JButton;->processMouseEvent(Ljava/awt/event/MouseEvent;)V

    .line 66
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v0

    .line 67
    .local v0, "id":I
    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    invoke-virtual {v1, p0, v2, v2}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/teleal/common/swingfwk/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    invoke-virtual {v1, v2}, Ljavax/swing/JPopupMenu;->setVisible(Z)V

    goto :goto_0
.end method
