.class Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;
.super Ljava/io/PrintWriter;
.source "MockHttpServletResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/mock/http/MockHttpServletResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponsePrintWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;


# direct methods
.method public constructor <init>(Lorg/teleal/common/mock/http/MockHttpServletResponse;Ljava/io/Writer;)V
    .locals 1
    .param p2, "out"    # Ljava/io/Writer;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    .line 486
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 487
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 509
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 510
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 502
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 503
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 504
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    invoke-static {v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->access$000(Lorg/teleal/common/mock/http/MockHttpServletResponse;)V

    .line 505
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 496
    invoke-super {p0, p1, p2, p3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 497
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 498
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    invoke-static {v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->access$000(Lorg/teleal/common/mock/http/MockHttpServletResponse;)V

    .line 499
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 490
    invoke-super {p0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 491
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 492
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;->this$0:Lorg/teleal/common/mock/http/MockHttpServletResponse;

    invoke-static {v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->access$000(Lorg/teleal/common/mock/http/MockHttpServletResponse;)V

    .line 493
    return-void
.end method
