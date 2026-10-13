.class Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;
.super Ljavax/swing/plaf/basic/BasicTabbedPaneUI;
.source "ClosableTabbedPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/swingfwk/ClosableTabbedPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseableTabbedPaneUI"
.end annotation


# instance fields
.field private horizontalTextPosition:I

.field final synthetic this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;


# direct methods
.method public constructor <init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;)V
    .locals 1

    .prologue
    .line 514
    iput-object p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/basic/BasicTabbedPaneUI;-><init>()V

    .line 509
    const/4 v0, 0x2

    iput v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->horizontalTextPosition:I

    .line 515
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/swingfwk/ClosableTabbedPane;I)V
    .locals 1
    .param p2, "horizontalTextPosition"    # I

    .prologue
    .line 523
    iput-object p1, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->this$0:Lorg/teleal/common/swingfwk/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/basic/BasicTabbedPaneUI;-><init>()V

    .line 509
    const/4 v0, 0x2

    iput v0, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->horizontalTextPosition:I

    .line 524
    iput p2, p0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->horizontalTextPosition:I

    .line 525
    return-void
.end method


# virtual methods
.method protected layoutLabel(ILjava/awt/FontMetrics;ILjava/lang/String;Ljavax/swing/Icon;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Z)V
    .locals 19
    .param p1, "tabPlacement"    # I
    .param p2, "metrics"    # Ljava/awt/FontMetrics;
    .param p3, "tabIndex"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "icon"    # Ljavax/swing/Icon;
    .param p6, "tabRect"    # Ljava/awt/Rectangle;
    .param p7, "iconRect"    # Ljava/awt/Rectangle;
    .param p8, "textRect"    # Ljava/awt/Rectangle;
    .param p9, "isSelected"    # Z

    .prologue
    .line 545
    const/4 v4, 0x0

    move-object/from16 v0, p7

    iput v4, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p7

    iput v4, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, p8

    iput v4, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p8

    iput v4, v0, Ljava/awt/Rectangle;->x:I

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->getTextViewForTab(I)Ljavax/swing/text/View;

    move-result-object v16

    .line 548
    .local v16, "v":Ljavax/swing/text/View;
    if-eqz v16, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const-string v5, "html"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->horizontalTextPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->textIconGap:I

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v4 .. v15}, Ljavax/swing/SwingUtilities;->layoutCompoundLabel(Ljavax/swing/JComponent;Ljava/awt/FontMetrics;Ljava/lang/String;Ljavax/swing/Icon;IIIILjava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;I)Ljava/lang/String;

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    const-string v5, "html"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->getTabLabelShiftX(IIZ)I

    move-result v17

    .line 567
    .local v17, "xNudge":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lorg/teleal/common/swingfwk/ClosableTabbedPane$CloseableTabbedPaneUI;->getTabLabelShiftY(IIZ)I

    move-result v18

    .line 568
    .local v18, "yNudge":I
    move-object/from16 v0, p7

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    add-int v4, v4, v17

    move-object/from16 v0, p7

    iput v4, v0, Ljava/awt/Rectangle;->x:I

    .line 569
    move-object/from16 v0, p7

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    add-int v4, v4, v18

    move-object/from16 v0, p7

    iput v4, v0, Ljava/awt/Rectangle;->y:I

    .line 570
    move-object/from16 v0, p8

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    add-int v4, v4, v17

    move-object/from16 v0, p8

    iput v4, v0, Ljava/awt/Rectangle;->x:I

    .line 571
    move-object/from16 v0, p8

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    add-int v4, v4, v18

    move-object/from16 v0, p8

    iput v4, v0, Ljava/awt/Rectangle;->y:I

    .line 572
    return-void
.end method
