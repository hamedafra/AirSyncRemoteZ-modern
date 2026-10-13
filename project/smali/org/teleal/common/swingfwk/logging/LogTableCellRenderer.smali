.class public abstract Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;
.super Ljavax/swing/table/DefaultTableCellRenderer;
.source "LogTableCellRenderer.java"


# instance fields
.field protected dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/swing/table/DefaultTableCellRenderer;-><init>()V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method protected abstract getDebugIcon()Ljavax/swing/ImageIcon;
.end method

.method protected abstract getInfoIcon()Ljavax/swing/ImageIcon;
.end method

.method public getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    .locals 9
    .param p1, "table"    # Ljavax/swing/JTable;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "hasFocus"    # Z
    .param p5, "row"    # I
    .param p6, "column"    # I

    .prologue
    .line 47
    move-object v8, p2

    check-cast v8, Lorg/teleal/common/swingfwk/logging/LogMessage;

    .line 49
    .local v8, "message":Lorg/teleal/common/swingfwk/logging/LogMessage;
    packed-switch p6, :pswitch_data_0

    .line 86
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<NL>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "<CR>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->getDebugIcon()Ljavax/swing/ImageIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    :cond_3
    new-instance v0, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->getTraceIcon()Ljavax/swing/ImageIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    goto :goto_0

    .line 68
    :cond_4
    new-instance v0, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->getInfoIcon()Ljavax/swing/ImageIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    goto :goto_0

    .line 73
    :pswitch_1
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 74
    .local v7, "date":Ljava/util/Date;
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    .end local v7    # "date":Ljava/util/Date;
    :pswitch_2
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getThread()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :pswitch_3
    invoke-virtual {v8}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getSource()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object v0

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract getTraceIcon()Ljavax/swing/ImageIcon;
.end method

.method protected abstract getWarnErrorIcon()Ljavax/swing/ImageIcon;
.end method
