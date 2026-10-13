.class Lorg/teleal/cling/transport/impl/apache/StreamServerImpl$1;
.super Lorg/apache/http/impl/DefaultHttpServerConnection;
.source "StreamServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl$1;->this$0:Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;

    .line 120
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHttpRequestFactory()Lorg/apache/http/HttpRequestFactory;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;

    invoke-direct {v0}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;-><init>()V

    return-object v0
.end method
