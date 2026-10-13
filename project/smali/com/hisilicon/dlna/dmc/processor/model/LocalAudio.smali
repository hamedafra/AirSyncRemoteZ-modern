.class public Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;
.super Ljava/lang/Object;
.source "LocalAudio.java"


# instance fields
.field private album:Ljava/lang/String;

.field private albumArt:Ljava/lang/String;

.field private albumId:J

.field private artist:Ljava/lang/String;

.field private artistId:J

.field private duration:J

.field private folder:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private id:J

.field private mimeType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;

.field private track:I

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
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->albumArt:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->albumId:J

    return-wide v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->artistId:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->duration:J

    return-wide v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->track:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->album:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAlbumArt(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumArt"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->albumArt:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAlbumId(J)V
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->albumId:J

    .line 44
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->artist:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setArtistId(J)V
    .locals 1
    .param p1, "artistId"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->artistId:J

    .line 56
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->duration:J

    .line 68
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->folder:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->genre:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->id:J

    .line 26
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->mimeType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->path:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->size:J

    .line 98
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->track:I

    .line 104
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/LocalAudio;->year:Ljava/lang/String;

    .line 110
    return-void
.end method
