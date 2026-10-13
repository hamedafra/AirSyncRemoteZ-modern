.class public Lorg/teleal/common/mock/http/MockRequestDispatcher;
.super Ljava/lang/Object;
.source "MockRequestDispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# instance fields
.field private final log:Ljava/util/logging/Logger;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lorg/teleal/common/mock/http/MockRequestDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->log:Ljava/util/logging/Logger;

    .line 49
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->url:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 55
    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform forward - response is already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p0, p2}, Lorg/teleal/common/mock/http/MockRequestDispatcher;->getMockHttpServletResponse(Ljavax/servlet/ServletResponse;)Lorg/teleal/common/mock/http/MockHttpServletResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setForwardedUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockRequestDispatcher: forwarding to URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 64
    :cond_1
    return-void
.end method

.method protected getMockHttpServletResponse(Ljavax/servlet/ServletResponse;)Lorg/teleal/common/mock/http/MockHttpServletResponse;
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 81
    instance-of v0, p1, Lorg/teleal/common/mock/http/MockHttpServletResponse;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lorg/teleal/common/mock/http/MockHttpServletResponse;

    .line 87
    .end local p1    # "response":Ljavax/servlet/ServletResponse;
    :goto_0
    return-object p1

    .line 85
    .restart local p1    # "response":Ljavax/servlet/ServletResponse;
    :cond_0
    instance-of v0, p1, Ljavax/servlet/http/HttpServletResponseWrapper;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Ljavax/servlet/http/HttpServletResponseWrapper;

    .end local p1    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockRequestDispatcher;->getMockHttpServletResponse(Ljavax/servlet/ServletResponse;)Lorg/teleal/common/mock/http/MockHttpServletResponse;

    move-result-object p1

    goto :goto_0

    .line 89
    .restart local p1    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MockRequestDispatcher requires MockHttpServletResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lorg/teleal/common/mock/http/MockRequestDispatcher;->getMockHttpServletResponse(Ljavax/servlet/ServletResponse;)Lorg/teleal/common/mock/http/MockHttpServletResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setIncludedUrl(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockRequestDispatcher: including URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockRequestDispatcher;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
