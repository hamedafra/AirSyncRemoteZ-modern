.class public Lorg/teleal/common/mock/http/DelegatingServletInputStream;
.super Ljavax/servlet/ServletInputStream;
.source "DelegatingServletInputStream.java"


# instance fields
.field private final sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "sourceStream"    # Ljava/io/InputStream;

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/teleal/common/mock/http/DelegatingServletInputStream;->sourceStream:Ljava/io/InputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Ljavax/servlet/ServletInputStream;->close()V

    .line 65
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 66
    return-void
.end method

.method public final getSourceStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletInputStream;->sourceStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
