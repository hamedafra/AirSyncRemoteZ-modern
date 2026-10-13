.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;
.super Ljava/lang/Object;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Held"
.end annotation


# instance fields
.field final index:I

.field final pts:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->index:I

    .line 693
    iput-wide p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->pts:J

    .line 694
    return-void
.end method
