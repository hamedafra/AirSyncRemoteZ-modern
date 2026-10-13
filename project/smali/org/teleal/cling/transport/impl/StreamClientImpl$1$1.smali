.class Lorg/teleal/cling/transport/impl/StreamClientImpl$1$1;
.super Lsun/net/www/protocol/http/Handler;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/StreamClientImpl$1;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/teleal/cling/transport/impl/StreamClientImpl$1;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/impl/StreamClientImpl$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$1$1;->this$1:Lorg/teleal/cling/transport/impl/StreamClientImpl$1;

    .line 77
    invoke-direct {p0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/transport/impl/StreamClientImpl$1$1;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;

    invoke-direct {v0, p1, p0}, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V

    return-object v0
.end method
