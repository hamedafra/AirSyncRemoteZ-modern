.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;
.super Ljava/lang/Object;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Frame"
.end annotation


# instance fields
.field final data:[B

.field final key:Z

.field final len:I

.field final pts:J

.field final type:I


# direct methods
.method constructor <init>(IJ[BIZ)V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->type:I

    .line 706
    iput-wide p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->pts:J

    .line 707
    iput-object p4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->data:[B

    .line 708
    iput p5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    .line 709
    iput-boolean p6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->key:Z

    .line 710
    return-void
.end method
