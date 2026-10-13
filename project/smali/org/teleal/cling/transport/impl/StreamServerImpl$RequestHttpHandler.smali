.class Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lcom/sun/net/httpserver/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/transport/impl/StreamServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestHttpHandler"
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final router:Lorg/teleal/cling/transport/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/Router;)V
    .locals 0
    .param p1, "router"    # Lorg/teleal/cling/transport/Router;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/teleal/cling/transport/Router;

    .line 93
    return-void
.end method


# virtual methods
.method public handle(Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 3
    .param p1, "httpExchange"    # Lcom/sun/net/httpserver/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received HTTP exchange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/teleal/cling/transport/Router;

    .line 101
    new-instance v1, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v2}, Lorg/teleal/cling/transport/Router;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;-><init>(Lorg/teleal/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;)V

    .line 100
    invoke-interface {v0, v1}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/transport/spi/UpnpStream;)V

    .line 103
    return-void
.end method
