.class Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$1;
.super Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;
.source "AndroidUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->createStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$1;->this$0:Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    .line 106
    invoke-direct {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionTimeoutSeconds()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method

.method public getDataReadTimeoutSeconds()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x5

    return v0
.end method

.method public getRequestRetryCount()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public getStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
