.class Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;
.super Lsun/net/www/protocol/http/HttpURLConnection;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/transport/impl/StreamClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpnpURLConnection"
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 275
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 276
    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 277
    const-string v2, "SUBSCRIBE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UNSUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NOTIFY"

    aput-object v2, v0, v1

    .line 275
    sput-object v0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->methods:[Ljava/lang/String;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V

    .line 282
    return-void
.end method


# virtual methods
.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    .line 292
    .local v1, "savedMethod":Ljava/lang/String;
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v3, "NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    const-string v2, "PUT"

    iput-object v2, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    .line 300
    :goto_0
    invoke-super {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 301
    .local v0, "os":Ljava/io/OutputStream;
    iput-object v1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-object v0

    .line 298
    .end local v0    # "os":Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    const-string v2, "GET"

    iput-object v2, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    .end local v1    # "savedMethod":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 306
    iget-boolean v1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->connected:Z

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Cannot reset method once connected"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    sget-object v2, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->methods:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 315
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UPnP HTTP method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_1
    aget-object v0, v2, v1

    .line 310
    .local v0, "m":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;->method:Ljava/lang/String;

    .line 312
    return-void

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
