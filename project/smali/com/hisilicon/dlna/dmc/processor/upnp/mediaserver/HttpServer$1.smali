.class Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;
.super Ljava/lang/Object;
.source "HttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    :goto_0
    :try_start_0
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$HTTPSession;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->access$000(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$HTTPSession;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    return-void
.end method
