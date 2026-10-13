.class Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;
.super Lorg/teleal/common/mock/http/DelegatingServletOutputStream;
.source "MockHttpServletResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/mock/http/MockHttpServletResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseServletOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;


# direct methods
.method public constructor <init>(Lorg/teleal/common/mock/http/MockHttpServletResponse;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 462
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    .line 463
    invoke-direct {p0, p2}, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 464
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-super {p0}, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->flush()V

    .line 474
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 475
    return-void
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
    .line 467
    invoke-super {p0, p1}, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->write(I)V

    .line 468
    invoke-super {p0}, Lorg/teleal/common/mock/http/DelegatingServletOutputStream;->flush()V

    .line 469
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    invoke-static {v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->access$000(Lorg/teleal/common/mock/http/MockHttpServletResponse;)V

    .line 470
    return-void
.end method
