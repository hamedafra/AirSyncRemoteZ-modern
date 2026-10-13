.class final Lorg/teleal/common/http/HttpFetch$1;
.super Ljava/lang/Object;
.source "HttpFetch.java"

# interfaces
.implements Lorg/teleal/common/http/HttpFetch$RepresentationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/http/HttpFetch;->fetchBinary(Ljava/net/URL;II)Lorg/teleal/common/http/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/common/http/HttpFetch$RepresentationFactory",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/teleal/common/http/Representation;
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/io/InputStream;",
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
    .line 39
    new-instance v0, Lorg/teleal/common/http/Representation;

    invoke-static {p2}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/teleal/common/http/Representation;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    return-object v0
.end method
