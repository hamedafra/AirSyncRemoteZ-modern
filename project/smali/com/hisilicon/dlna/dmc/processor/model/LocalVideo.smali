.class public Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;
.super Ljava/lang/Object;
.source "LocalVideo.java"


# instance fields
.field private artist:Ljava/lang/String;

.field private dateCreated:J

.field private day:Ljava/lang/String;

.field private duration:J

.field private folder:Ljava/lang/String;

.field private id:J

.field private mimeType:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private monthDisplayName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

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
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->dateCreated:J

    return-wide v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->duration:J

    return-wide v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->monthDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->size:J

    return-wide v0
.end method

.method public getThumbId()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->thumbId:J

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->artist:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDateCreated(J)V
    .locals 1
    .param p1, "dateCreated"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->dateCreated:J

    .line 39
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->day:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->duration:J

    .line 57
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->folder:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->id:J

    .line 27
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->mimeType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->month:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMonthDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "monthDisplayName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->monthDisplayName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->path:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->resolution:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->size:J

    .line 99
    return-void
.end method

.method public setThumbId(J)V
    .locals 1
    .param p1, "thumbId"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->thumbId:J

    .line 111
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbPath"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->thumbPath:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalVideo;->year:Ljava/lang/String;

    .line 105
    return-void
.end method
