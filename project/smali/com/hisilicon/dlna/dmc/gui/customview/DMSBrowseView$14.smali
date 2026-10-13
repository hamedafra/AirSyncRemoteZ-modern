.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootFloorBrowse()V

    return-void
.end method

.method static synthetic access$3500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootImageBrowseWaiting()V

    return-void
.end method

.method static synthetic access$3700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootImageBrowse()V

    return-void
.end method

.method static synthetic access$3800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootFloorVideoAndMusicBrowse()V

    return-void
.end method

.method static synthetic access$3900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootVideoBrowse()V

    return-void
.end method

.method static synthetic access$4000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootVideoBrowseWaiting()V

    return-void
.end method

.method static synthetic access$4200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootFloorMusicBrowse()V

    return-void
.end method

.method static synthetic access$4300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootMusicBrowse()V

    return-void
.end method

.method static synthetic access$4400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootMusicBrowseWaiting()V

    return-void
.end method

.method private deviceBrowseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method private deviceBrowseSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;

    invoke-direct {v1, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1136
    return-void
.end method

.method private rootFloorBrowse()V
    .locals 2

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootImageBrowse()V

    .line 1144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1160
    return-void
.end method

.method private rootFloorMusicBrowse()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method private rootFloorVideoAndMusicBrowse()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1220
    return-void
.end method

.method private rootImageBrowse()V
    .locals 2

    .prologue
    .line 1166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1181
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1182
    return-void
.end method

.method private rootImageBrowseWaiting()V
    .locals 4

    .prologue
    .line 1185
    :goto_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1187
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1192
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private rootMusicBrowse()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$8;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1308
    return-void
.end method

.method private rootMusicBrowseWaiting()V
    .locals 4

    .prologue
    .line 1311
    :goto_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1313
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private rootVideoBrowse()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$6;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1240
    return-void
.end method

.method private rootVideoBrowseWaiting()V
    .locals 4

    .prologue
    .line 1243
    :goto_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1245
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBrowseComplete(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "haveNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    invoke-direct {p0, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->deviceBrowseSuccess(Ljava/util/Map;)V

    .line 1082
    return-void
.end method

.method public onBrowseFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->deviceBrowseFailure(Ljava/lang/String;)V

    .line 1076
    return-void
.end method
