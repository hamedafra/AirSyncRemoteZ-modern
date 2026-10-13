.class Lorg/teleal/cling/transport/impl/StreamClientImpl$1;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/StreamClientImpl;-><init>(Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/impl/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/impl/StreamClientImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl$1;->this$0:Lorg/teleal/cling/transport/impl/StreamClientImpl;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new URLStreamHandler for protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/teleal/cling/transport/impl/StreamClientImpl$1$1;

    invoke-direct {v0, p0}, Lorg/teleal/cling/transport/impl/StreamClientImpl$1$1;-><init>(Lorg/teleal/cling/transport/impl/StreamClientImpl$1;)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
