.class public Lorg/teleal/common/http/HttpFetch;
.super Ljava/lang/Object;
.source "HttpFetch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/http/HttpFetch$RepresentationFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static fetch(Ljava/net/URL;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "connectTimeoutMillis"    # I
    .param p2, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "II",
            "Lorg/teleal/common/http/HttpFetch$RepresentationFactory",
            "<TE;>;)",
            "Lorg/teleal/common/http/Representation",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "factory":Lorg/teleal/common/http/HttpFetch$RepresentationFactory;, "Lorg/teleal/common/http/HttpFetch$RepresentationFactory<TE;>;"
    const-string v0, "GET"

    invoke-static {p0, v0, p1, p2, p3}, Lorg/teleal/common/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetch(Ljava/net/URL;Ljava/lang/String;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "II",
            "Lorg/teleal/common/http/HttpFetch$RepresentationFactory",
            "<TE;>;)",
            "Lorg/teleal/common/http/Representation",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "factory":Lorg/teleal/common/http/HttpFetch$RepresentationFactory;, "Lorg/teleal/common/http/HttpFetch$RepresentationFactory<TE;>;"
    const/4 v4, 0x0

    .line 61
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 63
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 65
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    invoke-virtual {v4, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 70
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 72
    invoke-interface {p4, v4, v2}, Lorg/teleal/common/http/HttpFetch$RepresentationFactory;->createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/teleal/common/http/Representation;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 83
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v5

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/io/IOException;
    if-eqz v4, :cond_2

    .line 77
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 78
    .local v3, "responseCode":I
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetching resource failed, returned status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "responseCode":I
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5

    .line 81
    .restart local v1    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static fetchBinary(Ljava/net/URL;)Lorg/teleal/common/http/Representation;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/teleal/common/http/Representation",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x1f4

    .line 33
    invoke-static {p0, v0, v0}, Lorg/teleal/common/http/HttpFetch;->fetchBinary(Ljava/net/URL;II)Lorg/teleal/common/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetchBinary(Ljava/net/URL;II)Lorg/teleal/common/http/Representation;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "connectTimeoutMillis"    # I
    .param p2, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/teleal/common/http/Representation",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/common/http/HttpFetch$1;

    invoke-direct {v0}, Lorg/teleal/common/http/HttpFetch$1;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/teleal/common/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static fetchString(Ljava/net/URL;II)Lorg/teleal/common/http/Representation;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "connectTimeoutMillis"    # I
    .param p2, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/teleal/common/http/Representation",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/teleal/common/http/HttpFetch$2;

    invoke-direct {v0}, Lorg/teleal/common/http/HttpFetch$2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/teleal/common/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static validate(Ljava/net/URL;)V
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f4

    .line 92
    const-string v0, "HEAD"

    new-instance v1, Lorg/teleal/common/http/HttpFetch$3;

    invoke-direct {v1}, Lorg/teleal/common/http/HttpFetch$3;-><init>()V

    invoke-static {p0, v0, v2, v2, v1}, Lorg/teleal/common/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/teleal/common/http/HttpFetch$RepresentationFactory;)Lorg/teleal/common/http/Representation;

    .line 97
    return-void
.end method
