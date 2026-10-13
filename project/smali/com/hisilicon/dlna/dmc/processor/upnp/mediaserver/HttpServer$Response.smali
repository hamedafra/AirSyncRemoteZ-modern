.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->header:Ljava/util/Properties;

    .line 65
    const-string v0, "200 OK"

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->status:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->header:Ljava/util/Properties;

    .line 73
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->status:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->mimeType:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/io/InputStream;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->header:Ljava/util/Properties;

    .line 82
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->status:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->mimeType:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->data:Ljava/io/InputStream;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->header:Ljava/util/Properties;

    .line 93
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->status:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->mimeType:Ljava/lang/String;

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->header:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method
