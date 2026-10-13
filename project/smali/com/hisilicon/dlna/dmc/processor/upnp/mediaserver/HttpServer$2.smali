.class Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;
.super Ljava/io/FileInputStream;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->serveFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

.field final synthetic val$dataLen:J


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/io/File;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
    .param p2, "x0"    # Ljava/io/File;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    iput-wide p3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;->val$dataLen:J

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;->val$dataLen:J

    long-to-int v0, v0

    return v0
.end method
