.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;
.super Ljava/lang/Object;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SpsParser"
.end annotation


# instance fields
.field private mBit:I

.field private final mData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mData:[B

    .line 1474
    return-void
.end method

.method private bit()I
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mData:[B

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mBit:I

    shr-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mBit:I

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 1500
    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mBit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->mBit:I

    .line 1501
    return v0
.end method

.method private bits(I)I
    .locals 3

    .line 1505
    nop

    .line 1506
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1507
    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v2

    or-int/2addr v1, v2

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    :cond_0
    return v1
.end method

.method private parse()[I
    .locals 11

    .line 1537
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bits(I)I

    .line 1538
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bits(I)I

    move-result v1

    .line 1539
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bits(I)I

    .line 1540
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    .line 1541
    nop

    .line 1542
    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_1

    const/16 v3, 0xf4

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x53

    if-eq v1, v3, :cond_1

    const/16 v3, 0x56

    if-eq v1, v3, :cond_1

    const/16 v3, 0x76

    if-eq v1, v3, :cond_1

    const/16 v3, 0x80

    if-eq v1, v3, :cond_1

    const/16 v3, 0x8a

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_4

    .line 1544
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v1

    .line 1545
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1546
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1548
    :cond_2
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    .line 1549
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    .line 1550
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1551
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 1552
    const/4 v6, 0x0

    :goto_1
    if-eq v1, v3, :cond_3

    const/16 v7, 0x8

    goto :goto_2

    :cond_3
    const/16 v7, 0xc

    :goto_2
    if-ge v6, v7, :cond_6

    .line 1553
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 1554
    const/4 v7, 0x6

    if-ge v6, v7, :cond_4

    const/16 v7, 0x10

    goto :goto_3

    :cond_4
    const/16 v7, 0x40

    :goto_3
    invoke-direct {p0, v7}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->skipScalingList(I)V

    .line 1552
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1559
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    .line 1560
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v0

    .line 1561
    if-nez v0, :cond_7

    .line 1562
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    goto :goto_6

    .line 1563
    :cond_7
    if-ne v0, v5, :cond_8

    .line 1564
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1565
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->se()I

    .line 1566
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->se()I

    .line 1567
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v0

    .line 1568
    nop

    :goto_5
    if-ge v4, v0, :cond_8

    .line 1569
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->se()I

    .line 1568
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1572
    :cond_8
    :goto_6
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    .line 1573
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1574
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v0

    add-int/2addr v0, v5

    .line 1575
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v3

    add-int/2addr v3, v5

    .line 1576
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v4

    .line 1577
    if-nez v4, :cond_9

    .line 1578
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1580
    :cond_9
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    .line 1581
    mul-int/lit8 v0, v0, 0x10

    .line 1582
    const/4 v6, 0x2

    rsub-int/lit8 v4, v4, 0x2

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x10

    .line 1583
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 1584
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v2

    .line 1585
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v7

    .line 1586
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v8

    .line 1587
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v9

    .line 1588
    if-nez v1, :cond_a

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v10, 0x2

    .line 1589
    :goto_7
    if-ne v1, v5, :cond_b

    const/4 v5, 0x2

    :cond_b
    mul-int v5, v5, v4

    .line 1590
    add-int/2addr v2, v7

    mul-int v2, v2, v10

    sub-int/2addr v0, v2

    .line 1591
    add-int/2addr v8, v9

    mul-int v8, v8, v5

    sub-int/2addr v3, v8

    .line 1593
    :cond_c
    filled-new-array {v0, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method private se()I
    .locals 2

    .line 1521
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->ue()I

    move-result v0

    .line 1522
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method static size([B)[I
    .locals 1

    .line 1478
    :try_start_0
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;

    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->unescape([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;-><init>([B)V

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->parse()[I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1479
    :catch_0
    move-exception p0

    .line 1480
    const/4 p0, 0x0

    return-object p0
.end method

.method private skipScalingList(I)V
    .locals 3

    .line 1526
    nop

    .line 1527
    nop

    .line 1528
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 1529
    if-eqz v0, :cond_0

    .line 1530
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->se()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 1532
    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1528
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    :cond_2
    return-void
.end method

.method private ue()I
    .locals 3

    .line 1513
    const/4 v0, 0x0

    .line 1514
    :goto_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bit()I

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    :cond_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->bits(I)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method private static unescape([B)[B
    .locals 7

    .line 1485
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1486
    nop

    .line 1487
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v5, p0, v3

    .line 1488
    const/4 v6, 0x2

    if-lt v4, v6, :cond_0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 1489
    nop

    .line 1490
    const/4 v4, 0x0

    goto :goto_1

    .line 1492
    :cond_0
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1493
    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1487
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1495
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
