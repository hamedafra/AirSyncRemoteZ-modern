.class Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
.super Ljava/lang/Object;
.source "ClosableTabbedPane.java"

# interfaces
.implements Ljavax/swing/Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/swingfwk/ClosableTabbedPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseTabIcon"
.end annotation


# instance fields
.field private fileIcon:Ljavax/swing/Icon;

.field private height:I

.field private mouseover:Z

.field private mousepressed:Z

.field final synthetic this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

.field private width:I

.field private x_pos:I

.field private y_pos:I


# direct methods
.method public constructor <init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;Ljavax/swing/Icon;)V
    .locals 2
    .param p2, "fileIcon"    # Ljavax/swing/Icon;

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 401
    iput-object p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-boolean v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 394
    iput-boolean v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 402
    iput-object p2, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    .line 403
    iput v1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->width:I

    .line 404
    iput v1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->height:I

    .line 405
    return-void
.end method

.method static synthetic access$002(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    return p1
.end method

.method static synthetic access$102(Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    return p1
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    .prologue
    .line 497
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->x_pos:I

    iget v2, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->y_pos:I

    iget v3, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->width:I

    iget v4, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getIconHeight()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->height:I

    return v0
.end method

.method public getIconWidth()I
    .locals 2

    .prologue
    .line 477
    iget v1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->width:I

    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    invoke-interface {v0}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V
    .locals 12
    .param p1, "c"    # Ljava/awt/Component;
    .param p2, "g"    # Ljava/awt/Graphics;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 418
    const/4 v3, 0x1

    .line 421
    .local v3, "doPaintCloseIcon":Z
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/swing/JTabbedPane;

    move-object v6, v0

    .line 422
    .local v6, "tabbedpane":Ljavax/swing/JTabbedPane;
    invoke-virtual {v6}, Ljavax/swing/JTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v6, p3, v0}, Ljavax/swing/plaf/TabbedPaneUI;->tabForCoordinate(Ljavax/swing/JTabbedPane;II)I

    move-result v5

    .line 423
    .local v5, "tabNumber":I
    invoke-virtual {v6, v5}, Ljavax/swing/JTabbedPane;->getComponentAt(I)Ljava/awt/Component;

    move-result-object v2

    check-cast v2, Ljavax/swing/JComponent;

    .line 424
    .local v2, "curPanel":Ljavax/swing/JComponent;
    const/4 v4, 0x0

    .line 425
    .local v4, "prop":Ljava/lang/Object;
    const-string v8, "isClosable"

    invoke-virtual {v2, v8}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 426
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "prop":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 429
    .end local v2    # "curPanel":Ljavax/swing/JComponent;
    .end local v5    # "tabNumber":I
    .end local v6    # "tabbedpane":Ljavax/swing/JTabbedPane;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 430
    iput p3, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->x_pos:I

    .line 431
    move/from16 v0, p4

    iput v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->y_pos:I

    .line 432
    add-int/lit8 v7, p4, 0x1

    .line 434
    .local v7, "y_p":I
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$200(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    if-nez v8, :cond_2

    .line 435
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$200(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    invoke-interface {v8, p1, p2, p3, v7}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 469
    .end local v7    # "y_p":I
    :cond_1
    :goto_1
    return-void

    .line 436
    .restart local v7    # "y_p":I
    :cond_2
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$300(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    if-nez v8, :cond_3

    .line 437
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$300(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    invoke-interface {v8, p1, p2, p3, v7}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    goto :goto_1

    .line 438
    :cond_3
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$400(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    if-eqz v8, :cond_4

    .line 439
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-static {v8}, Lorg/teleal/common/swingfwk/ClosableTabbedPane;->access$400(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)Ljavax/swing/Icon;

    move-result-object v8

    invoke-interface {v8, p1, p2, p3, v7}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    goto :goto_1

    .line 441
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 443
    invoke-virtual {p2}, Ljava/awt/Graphics;->getColor()Ljava/awt/Color;

    move-result-object v1

    .line 445
    .local v1, "col":Ljava/awt/Color;
    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    if-eqz v8, :cond_5

    .line 446
    sget-object v8, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {p2, v8}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 447
    add-int/lit8 v8, p3, 0x1

    const/16 v9, 0xc

    const/16 v10, 0xd

    invoke-virtual {p2, v8, v7, v9, v10}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 450
    :cond_5
    sget-object v8, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {p2, v8}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 451
    add-int/lit8 v8, p3, 0x1

    add-int/lit8 v9, p3, 0xc

    invoke-virtual {p2, v8, v7, v9, v7}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 452
    add-int/lit8 v8, p3, 0x1

    add-int/lit8 v9, v7, 0xd

    add-int/lit8 v10, p3, 0xc

    add-int/lit8 v11, v7, 0xd

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 453
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v7, 0xc

    invoke-virtual {p2, p3, v8, p3, v9}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 454
    add-int/lit8 v8, p3, 0xd

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, p3, 0xd

    add-int/lit8 v11, v7, 0xc

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 455
    add-int/lit8 v8, p3, 0x3

    add-int/lit8 v9, v7, 0x3

    add-int/lit8 v10, p3, 0xa

    add-int/lit8 v11, v7, 0xa

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 456
    iget-boolean v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    if-eqz v8, :cond_6

    .line 457
    sget-object v8, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    invoke-virtual {p2, v8}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 458
    :cond_6
    add-int/lit8 v8, p3, 0x3

    add-int/lit8 v9, v7, 0x4

    add-int/lit8 v10, p3, 0x9

    add-int/lit8 v11, v7, 0xa

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 459
    add-int/lit8 v8, p3, 0x4

    add-int/lit8 v9, v7, 0x3

    add-int/lit8 v10, p3, 0xa

    add-int/lit8 v11, v7, 0x9

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 460
    add-int/lit8 v8, p3, 0xa

    add-int/lit8 v9, v7, 0x3

    add-int/lit8 v10, p3, 0x3

    add-int/lit8 v11, v7, 0xa

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 461
    add-int/lit8 v8, p3, 0xa

    add-int/lit8 v9, v7, 0x4

    add-int/lit8 v10, p3, 0x4

    add-int/lit8 v11, v7, 0xa

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 462
    add-int/lit8 v8, p3, 0x9

    add-int/lit8 v9, v7, 0x3

    add-int/lit8 v10, p3, 0x3

    add-int/lit8 v11, v7, 0x9

    invoke-virtual {p2, v8, v9, v10, v11}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 463
    invoke-virtual {p2, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 464
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    if-eqz v8, :cond_1

    .line 465
    iget-object v8, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    iget v9, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseTabIcon;->width:I

    add-int/2addr v9, p3

    invoke-interface {v8, p1, p2, v9, v7}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    goto/16 :goto_1

    .line 428
    .end local v1    # "col":Ljava/awt/Color;
    .end local v7    # "y_p":I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method
