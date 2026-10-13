.class final Lorg/teleal/common/http/HttpFetch$3;
.super Ljava/lang/Object;
.source "HttpFetch.java"

# interfaces
.implements Lorg/teleal/common/http/HttpFetch$RepresentationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/http/HttpFetch;->validate(Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/teleal/common/http/Representation;
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/teleal/common/http/Representation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/teleal/common/http/Representation;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    return-object v0
.end method
