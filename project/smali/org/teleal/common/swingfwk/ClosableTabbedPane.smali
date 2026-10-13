.class public Lorg/teleal/common/swingfwk/ClosableTabbedPane;
.super Ljavax/swing/JTabbedPane;
.source "ClosableTabbedPane.java"

# interfaces
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/MouseMotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableMetalTabbedPaneUI;,
        Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;,
        Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    }
.end annotation


# instance fields
.field private headerViewport:Ljavax/swing/JViewport;

.field private hooverCloseIcon:Ljavax/swing/Icon;

.field private listenerList:Ljavax/swing/event/EventListenerList;

.field private normalCloseIcon:Ljavax/swing/Icon;

.field private pressedCloseIcon:Ljavax/swing/Icon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 61
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 66
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 71
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 76
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->init(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "horizontalTextPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 61
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 66
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 71
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 76
    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 94
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->init(I)V

    .line 95
    return-void
.end method

.method static synthetic access$200(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    return-object v0
.end method

.method static synthetic access$300(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    return-object v0
.end method

.method static synthetic access$400(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    return-object v0
.end method

.method private init(I)V
    .locals 1
    .param p1, "horizontalTextPosition"    # I

    .prologue
    .line 104
    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 105
    invoke-virtual {p0, p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 106
    invoke-virtual {p0, p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->addMouseMotionListener(Ljava/awt/event/MouseMotionListener;)V

    .line 108
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v0

    instance-of v0, v0, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableMetalTabbedPaneUI;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableMetalTabbedPaneUI;-><init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;I)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;-><init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;I)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    goto :goto_0
.end method

.method private processMouseEvents(Ljava/awt/event/MouseEvent;)V
    .locals 20
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 248
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6}, Ljavax/swing/plaf/TabbedPaneUI;->tabForCoordinate(Ljavax/swing/JTabbedPane;II)I

    move-result v19

    .line 249
    .local v19, "tabNumber":I
    if-gez v19, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    move-result-object v14

    check-cast v14, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;

    .line 251
    .local v14, "icon":Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    if-eqz v14, :cond_0

    .line 252
    invoke-virtual {v14}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->getBounds()Ljava/awt/Rectangle;

    move-result-object v17

    .line 253
    .local v17, "rect":Ljava/awt/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    if-nez v4, :cond_2

    new-instance v15, Ljava/awt/Point;

    invoke-direct {v15}, Ljava/awt/Point;-><init>()V

    .line 255
    .local v15, "pos":Ljava/awt/Point;
    :goto_1
    new-instance v2, Ljava/awt/Rectangle;

    move-object/from16 v0, v17

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    iget v5, v15, Ljava/awt/Point;->x:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v17

    iget v5, v0, Ljava/awt/Rectangle;->y:I

    iget v6, v15, Ljava/awt/Point;->y:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v17

    iget v6, v0, Ljava/awt/Rectangle;->width:I

    move-object/from16 v0, v17

    iget v7, v0, Ljava/awt/Rectangle;->height:I

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 258
    .local v2, "drawRect":Ljava/awt/Rectangle;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v4

    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_4

    .line 259
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    goto :goto_0

    .line 253
    .end local v2    # "drawRect":Ljava/awt/Rectangle;
    .end local v15    # "pos":Ljava/awt/Point;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    invoke-virtual {v4}, Ljavax/swing/JViewport;->getViewPosition()Ljava/awt/Point;

    move-result-object v15

    goto :goto_1

    .line 259
    .restart local v2    # "drawRect":Ljava/awt/Rectangle;
    .restart local v15    # "pos":Ljava/awt/Point;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 261
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v4

    const/16 v5, 0x1f7

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v4

    const/16 v5, 0x1fa

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_0

    .line 263
    :cond_5
    iget v4, v15, Ljava/awt/Point;->x:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v15, Ljava/awt/Point;->x:I

    .line 264
    iget v4, v15, Ljava/awt/Point;->y:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v15, Ljava/awt/Point;->y:I

    .line 265
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 266
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_8

    .line 267
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getSelectedIndex()I

    move-result v18

    .line 268
    .local v18, "selIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->fireCloseTab(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 269
    if-lez v18, :cond_6

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v4

    add-int/lit8 v5, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljavax/swing/plaf/TabbedPaneUI;->getTabBounds(Ljavax/swing/JTabbedPane;I)Ljava/awt/Rectangle;

    move-result-object v16

    .line 273
    .local v16, "rec":Ljava/awt/Rectangle;
    new-instance v3, Ljava/awt/event/MouseEvent;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/Component;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v8

    move-object/from16 v0, v16

    iget v9, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, v16

    iget v10, v0, Ljava/awt/Rectangle;->y:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getButton()I

    move-result v13

    invoke-direct/range {v3 .. v13}, Ljava/awt/event/MouseEvent;-><init>(Ljava/awt/Component;IJIIIIZI)V

    .line 282
    .local v3, "event":Ljava/awt/event/MouseEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->dispatchEvent(Ljava/awt/AWTEvent;)V

    .line 286
    .end local v3    # "event":Ljava/awt/event/MouseEvent;
    .end local v16    # "rec":Ljava/awt/Rectangle;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->remove(I)V

    .line 299
    .end local v18    # "selIndex":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    goto/16 :goto_0

    .line 288
    .restart local v18    # "selIndex":I
    :cond_7
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 289
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    goto :goto_3

    .line 293
    .end local v18    # "selIndex":I
    :cond_8
    const/4 v4, 0x1

    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_4
    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 297
    :cond_a
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    goto :goto_3
.end method


# virtual methods
.method public addCloseableTabbedPaneListener(Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;)V
    .locals 2
    .param p1, "l"    # Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 311
    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/awt/Component;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V

    .line 135
    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/awt/Component;
    .param p3, "extraIcon"    # Ljavax/swing/Icon;

    .prologue
    .line 145
    const/4 v3, 0x1

    .line 147
    .local v3, "doPaintCloseIcon":Z
    const/4 v6, 0x0

    .line 148
    .local v6, "prop":Ljava/lang/Object;
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljavax/swing/JComponent;

    move-object v7, v0

    const-string v8, "isClosable"

    invoke-virtual {v7, v8}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 150
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "prop":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 154
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    new-instance v7, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;

    invoke-direct {v7, p0, p3}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;-><init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;Ljavax/swing/Icon;)V

    :goto_1
    invoke-super {p0, p1, v7, p2}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;)V

    .line 158
    iget-object v7, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    if-nez v7, :cond_3

    .line 159
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getComponents()[Ljava/awt/Component;

    move-result-object v1

    .local v1, "arr$":[Ljava/awt/Component;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 160
    .local v2, "c":Ljava/awt/Component;
    const-string v7, "TabbedPane.scrollableViewport"

    invoke-virtual {v2}, Ljava/awt/Component;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    check-cast v2, Ljavax/swing/JViewport;

    .end local v2    # "c":Ljava/awt/Component;
    iput-object v2, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 159
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 154
    .end local v1    # "arr$":[Ljava/awt/Component;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 164
    :cond_3
    return-void

    .line 152
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method protected fireCloseTab(I)Z
    .locals 7
    .param p1, "tabIndexToClose"    # I

    .prologue
    .line 341
    const/4 v1, 0x1

    .line 343
    .local v1, "closeit":Z
    iget-object v6, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v6}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v5

    .line 344
    .local v5, "listeners":[Ljava/lang/Object;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 345
    .local v2, "i":Ljava/lang/Object;
    instance-of v6, v2, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    if-eqz v6, :cond_1

    .line 346
    check-cast v2, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    .end local v2    # "i":Ljava/lang/Object;
    invoke-interface {v2, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;->closeTab(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 347
    const/4 v1, 0x0

    .line 352
    :cond_0
    return v1

    .line 344
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCloseableTabbedPaneListener()[Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1}, Ljavax/swing/event/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    return-object v0
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 174
    return-void
.end method

.method public mouseDragged(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 230
    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 182
    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;

    .line 192
    .local v1, "icon":Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    if-eqz v1, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "icon":Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->repaint()V

    .line 196
    return-void
.end method

.method public mouseMoved(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 240
    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 205
    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 213
    return-void
.end method

.method public removeCloseableTabbedPaneListener(Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;)V
    .locals 2
    .param p1, "l"    # Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/teleal/common/swingfwk/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 320
    return-void
.end method

.method public setCloseIcons(Ljavax/swing/Icon;Ljavax/swing/Icon;Ljavax/swing/Icon;)V
    .locals 0
    .param p1, "normal"    # Ljavax/swing/Icon;
    .param p2, "hoover"    # Ljavax/swing/Icon;
    .param p3, "pressed"    # Ljavax/swing/Icon;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 123
    iput-object p2, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 124
    iput-object p3, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 125
    return-void
.end method
