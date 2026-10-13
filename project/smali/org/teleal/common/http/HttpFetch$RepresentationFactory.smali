.class public interface abstract Lorg/teleal/common/http/HttpFetch$RepresentationFactory;
.super Ljava/lang/Object;
.source "HttpFetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/http/HttpFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RepresentationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/teleal/common/http/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/teleal/common/http/Representation",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
