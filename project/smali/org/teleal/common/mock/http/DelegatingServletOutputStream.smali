.class public Lorg/teleal/common/mock/http/DelegatingServletOutputStream;
.super Ljavax/servlet/ServletOutputStream;
.source "DelegatingServletOutputStream.java"


# instance fields
.field private final targetStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "targetStream"    # Ljava/io/OutputStream;

    .prologue
    .line 45
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->targetStream:Ljava/io/OutputStream;

    .line 47
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
    .line 71
    invoke-super {p0}, Ljavax/servlet/ServletOutputStream;->close()V

    .line 72
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->targetStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 73
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Ljavax/servlet/ServletOutputStream;->flush()V

    .line 66
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->targetStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 67
    return-void
.end method

.method public final getTargetStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->targetStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->targetStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    return-void
.end method
