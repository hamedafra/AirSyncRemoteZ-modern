.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;
.super Lorg/teleal/cling/support/lastchange/LastChangeParser;
.source "RenderingControlLastChangeParser.java"


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/AVT_RCS"

.field public static final SCHEMA_RESOURCE:Ljava/lang/String; = "org/teleal/cling/support/renderingcontrol/metadata-1.0-rcs.xsd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEventedVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;->ALL:Ljava/util/Set;

    return-object v0
.end method

.method protected getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/AVT_RCS"

    return-object v0
.end method

.method protected getSchemaSources()[Ljavax/xml/transform/Source;
    .locals 5

    .prologue
    .line 49
    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org/teleal/cling/support/renderingcontrol/metadata-1.0-rcs.xsd"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
