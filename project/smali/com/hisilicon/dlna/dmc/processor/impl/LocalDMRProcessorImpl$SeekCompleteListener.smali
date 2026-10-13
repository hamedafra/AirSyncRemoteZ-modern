.class Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;
.super Ljava/lang/Object;
.source "LocalDMRProcessorImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekCompleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 230
    return-void
.end method
