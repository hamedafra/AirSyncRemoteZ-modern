.class public Lorg/teleal/common/swingfwk/logging/LogTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "LogTableModel.java"


# instance fields
.field protected maxAgeSeconds:I

.field protected messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxAgeSeconds"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->paused:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    .line 35
    iput p1, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->maxAgeSeconds:I

    .line 36
    return-void
.end method


# virtual methods
.method public clearMessages()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->fireTableDataChanged()V

    .line 83
    return-void
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogMessage;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x5

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 110
    const-string v0, "Message"

    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 104
    :pswitch_1
    const-string v0, "Time"

    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "Thread"

    goto :goto_0

    .line 108
    :pswitch_3
    const-string v0, "Source"

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->maxAgeSeconds:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->paused:Z

    return v0
.end method

.method public declared-synchronized pushMessage(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
    .locals 8
    .param p1, "message"    # Lorg/teleal/common/swingfwk/logging/LogMessage;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget v6, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->maxAgeSeconds:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_2

    .line 61
    iget-object v6, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 62
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/common/swingfwk/logging/LogMessage;>;"
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 63
    .local v0, "currentTime":J
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/common/swingfwk/logging/LogMessage;

    .line 65
    .local v5, "logMessage":Lorg/teleal/common/swingfwk/logging/LogMessage;
    iget v6, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->maxAgeSeconds:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v2, v6

    .line 66
    .local v2, "delta":J
    invoke-virtual {v5}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 57
    .end local v0    # "currentTime":J
    .end local v2    # "delta":J
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/common/swingfwk/logging/LogMessage;>;"
    .end local v5    # "logMessage":Lorg/teleal/common/swingfwk/logging/LogMessage;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 72
    :cond_2
    :try_start_2
    iget-object v6, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->messages:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->fireTableDataChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setMaxAgeSeconds(I)V
    .locals 0
    .param p1, "maxAgeSeconds"    # I

    .prologue
    .line 43
    iput p1, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->maxAgeSeconds:I

    .line 44
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/teleal/common/swingfwk/logging/LogTableModel;->paused:Z

    .line 52
    return-void
.end method
