.class public Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# static fields
.field private static final MAX_ACTOR_CODE:I = 0x400

.field private static final MAX_BKIMAGE_CODE:I = 0x400

.field private static final MAX_CATEGORY_CODE:I = 0x80

.field private static final MAX_DESCRIPTION_CODE:I = 0x400

.field private static final MAX_DIRECTOR:I = 0x100

.field private static final MAX_DURATION:I = 0x20

.field private static final MAX_ITEMNAME_CODE:I = 0x80

.field private static final MAX_LANGUAGE:I = 0x20

.field private static final MAX_PROGRAM_CODE:I = 0x80

.field private static final MAX_REGION:I = 0x80

.field static final Tag:Ljava/lang/String; = "MEDIA_INFO"


# instance fields
.field private mActor:Ljava/lang/String;

.field private mBKImage1:Ljava/lang/String;

.field private mBKImage2:Ljava/lang/String;

.field private mCategoryCode:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDirector:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemType:I

.field private mLanguage:Ljava/lang/String;

.field private mPosition:I

.field private mProgramCode:Ljava/lang/String;

.field private mRatingLevel:I

.field private mRegion:Ljava/lang/String;

.field private mStatus:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mActor:Ljava/lang/String;

    return-object v0
.end method

.method public getBKImage1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage1:Ljava/lang/String;

    return-object v0
.end method

.method public getBKImage2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage2:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDirector:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemType:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mPosition:I

    return v0
.end method

.method public getProgramCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mProgramCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingLevel()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRatingLevel:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mStatus:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected mediaInfoPrint()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recv media info status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "programCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mProgramCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BKImage1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BKImage2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mActor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Director:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDirector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RatingLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRatingLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mCategoryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method protected readMediaInfo(Ljava/io/DataInputStream;)V
    .locals 14
    .param p1, "in"    # Ljava/io/DataInputStream;

    .prologue
    .line 422
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    iput v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mStatus:I

    .line 423
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 424
    .local v12, "programCodeLen":I
    if-lez v12, :cond_0

    .line 426
    new-array v9, v12, [B

    .line 427
    .local v9, "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 428
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mProgramCode:Ljava/lang/String;

    .line 431
    .end local v9    # "buf":[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    iput v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemType:I

    .line 432
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 433
    .local v11, "itemNameLen":I
    if-lez v11, :cond_1

    .line 435
    new-array v9, v11, [B

    .line 436
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 437
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemName:Ljava/lang/String;

    .line 440
    .end local v9    # "buf":[B
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 441
    .local v1, "BKImage1Len":I
    if-lez v1, :cond_2

    .line 443
    new-array v9, v1, [B

    .line 444
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 445
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage1:Ljava/lang/String;

    .line 448
    .end local v9    # "buf":[B
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 449
    .local v2, "BKImage2Len":I
    if-lez v2, :cond_3

    .line 451
    new-array v9, v2, [B

    .line 452
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 453
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage2:Ljava/lang/String;

    .line 456
    .end local v9    # "buf":[B
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    iput v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRatingLevel:I

    .line 458
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 459
    .local v4, "DescriptionLen":I
    if-lez v4, :cond_4

    .line 461
    new-array v9, v4, [B

    .line 462
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 463
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDescription:Ljava/lang/String;

    .line 466
    .end local v9    # "buf":[B
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 467
    .local v0, "ActorLen":I
    if-lez v0, :cond_5

    .line 469
    new-array v9, v0, [B

    .line 470
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 471
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mActor:Ljava/lang/String;

    .line 474
    .end local v9    # "buf":[B
    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 475
    .local v5, "DirectorLen":I
    if-lez v5, :cond_6

    .line 477
    new-array v9, v5, [B

    .line 478
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 479
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDirector:Ljava/lang/String;

    .line 482
    .end local v9    # "buf":[B
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 483
    .local v8, "RegionLen":I
    if-lez v8, :cond_7

    .line 485
    new-array v9, v8, [B

    .line 486
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 487
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRegion:Ljava/lang/String;

    .line 490
    .end local v9    # "buf":[B
    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 491
    .local v7, "LanguageLen":I
    if-lez v7, :cond_8

    .line 493
    new-array v9, v7, [B

    .line 494
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 495
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mLanguage:Ljava/lang/String;

    .line 498
    .end local v9    # "buf":[B
    :cond_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 499
    .local v3, "CategoryCodeLen":I
    if-lez v3, :cond_9

    .line 501
    new-array v9, v3, [B

    .line 502
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 503
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mCategoryCode:Ljava/lang/String;

    .line 506
    .end local v9    # "buf":[B
    :cond_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 507
    .local v6, "DurationLen":I
    if-lez v6, :cond_a

    .line 509
    new-array v9, v6, [B

    .line 510
    .restart local v9    # "buf":[B
    invoke-virtual {p1, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 511
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDuration:Ljava/lang/String;

    .line 514
    .end local v9    # "buf":[B
    :cond_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    iput v13, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mPosition:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "ActorLen":I
    .end local v1    # "BKImage1Len":I
    .end local v2    # "BKImage2Len":I
    .end local v3    # "CategoryCodeLen":I
    .end local v4    # "DescriptionLen":I
    .end local v5    # "DirectorLen":I
    .end local v6    # "DurationLen":I
    .end local v7    # "LanguageLen":I
    .end local v8    # "RegionLen":I
    .end local v11    # "itemNameLen":I
    .end local v12    # "programCodeLen":I
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v10

    .line 518
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 2
    .param p1, "Actor"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 206
    const-string v0, "Actor exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 207
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mActor:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setBKImage1(Ljava/lang/String;)V
    .locals 2
    .param p1, "BKImage1"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 135
    const-string v0, "BKImage1 exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage1:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setBKImage2(Ljava/lang/String;)V
    .locals 2
    .param p1, "BKImage2"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 157
    const-string v0, "BKImage2 exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 158
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mBKImage2:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setCategoryCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "CategoryCode"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 300
    const-string v0, "CategoryCode exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 301
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mCategoryCode:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "Description"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 181
    const-string v0, "Description exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDescription:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 2
    .param p1, "Director"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x100

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 228
    const-string v0, "Director exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDirector:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 2
    .param p1, "Duration"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x20

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 326
    const-string v0, "Duration exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 327
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mDuration:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "ItemType"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemType:I

    .line 372
    return-void
.end method

.method public setItem_name(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 113
    const-string v0, "itemName exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mItemName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "Language"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x20

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 274
    const-string v0, "Language exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mLanguage:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "Position"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mPosition:I

    .line 394
    return-void
.end method

.method public setProgramCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "programCode"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 87
    const-string v0, "programCode exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mProgramCode:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setRatingLevel(I)V
    .locals 0
    .param p1, "RatingLevel"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRatingLevel:I

    .line 350
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 2
    .param p1, "Region"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 250
    const-string v0, "Region exceed max length"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 251
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mRegion:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "Status"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mStatus:I

    .line 416
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MediaInfo;->mUrl:Ljava/lang/String;

    .line 67
    return-void
.end method
