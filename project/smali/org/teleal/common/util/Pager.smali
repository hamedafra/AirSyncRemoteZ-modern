.class public Lorg/teleal/common/util/Pager;
.super Ljava/lang/Object;
.source "Pager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private numOfRecords:Ljava/lang/Long;

.field private page:Ljava/lang/Integer;

.field private pageSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 28
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2
    .param p1, "numOfRecords"    # Ljava/lang/Long;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 28
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 34
    iput-object p1, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "numOfRecords"    # Ljava/lang/Long;
    .param p2, "page"    # Ljava/lang/Integer;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 28
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 38
    iput-object p1, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 39
    iput-object p2, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 2
    .param p1, "numOfRecords"    # Ljava/lang/Long;
    .param p2, "page"    # Ljava/lang/Integer;
    .param p3, "pageSize"    # Ljava/lang/Long;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 28
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 43
    iput-object p1, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 44
    iput-object p2, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 45
    iput-object p3, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 46
    return-void
.end method


# virtual methods
.method public getFirstPage()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public getIndexRangeBegin()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPage()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v0, v4, v6

    .line 86
    .local v0, "retval":J
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    .end local v0    # "retval":J
    :goto_0
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .restart local v0    # "retval":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getIndexRangeEnd()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 90
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getIndexRangeBegin()J

    move-result-wide v0

    .line 91
    .local v0, "firstIndex":J
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v4, v6, v8

    .line 92
    .local v4, "pageIndex":J
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v6, v8

    .line 93
    .local v2, "lastIndex":J
    add-long v6, v0, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getLastPage()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 97
    iget-object v2, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long v0, v2, v4

    .line 98
    .local v0, "lastPage":J
    iget-object v2, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sub-long/2addr v0, v6

    .line 99
    :cond_0
    add-long v2, v0, v6

    return-wide v2
.end method

.method public getNextPage()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNumOfRecords()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreviousPage()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getIndexRangeEnd()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviousPageAvailable()Z
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getIndexRangeBegin()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeveralPages()Z
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumOfRecords(Ljava/lang/Long;)V
    .locals 0
    .param p1, "numOfRecords"    # Ljava/lang/Long;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/teleal/common/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 54
    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/Integer;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/teleal/common/util/Pager;->page:Ljava/lang/Integer;

    .line 62
    :cond_0
    return-void
.end method

.method public setPageSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/Long;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/teleal/common/util/Pager;->pageSize:Ljava/lang/Long;

    .line 70
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pager - Records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Page size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/common/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
