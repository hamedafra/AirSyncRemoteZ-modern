.class public Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;
.super Ljava/lang/Object;
.source "LocalPhoto.java"


# instance fields
.field private dateCreated:J

.field private day:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private id:J

.field private mimeType:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private monthDisplayName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private thumbId:J

.field private thumbPath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateCreated()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->dateCreated:J

    return-wide v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->monthDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->size:J

    return-wide v0
.end method

.method public getThumbId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->thumbId:J

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setDateCreated(J)V
    .locals 1
    .param p1, "dateCreated"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->dateCreated:J

    .line 36
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->day:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->folder:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->id:J

    .line 24
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->mimeType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->month:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMonthDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "monthDisplayName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->monthDisplayName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->path:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->size:J

    .line 78
    return-void
.end method

.method public setThumbId(J)V
    .locals 1
    .param p1, "thumbId"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->thumbId:J

    .line 90
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbPath"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->thumbPath:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalPhoto;->year:Ljava/lang/String;

    .line 84
    return-void
.end method
