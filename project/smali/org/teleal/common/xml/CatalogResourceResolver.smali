.class public Lorg/teleal/common/xml/CatalogResourceResolver;
.super Ljava/lang/Object;
.source "CatalogResourceResolver.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/xml/CatalogResourceResolver$Input;
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final catalog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/teleal/common/xml/CatalogResourceResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/CatalogResourceResolver;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "catalog":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/net/URL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/teleal/common/xml/CatalogResourceResolver;->catalog:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .param p5, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v3, Lorg/teleal/common/xml/CatalogResourceResolver;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to resolve system identifier URI in catalog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lorg/teleal/common/xml/CatalogResourceResolver;->catalog:Ljava/util/Map;

    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .local v2, "systemURL":Ljava/net/URL;
    if-eqz v2, :cond_0

    .line 55
    sget-object v3, Lorg/teleal/common/xml/CatalogResourceResolver;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading catalog resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v1, Lorg/teleal/common/xml/CatalogResourceResolver$Input;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/teleal/common/xml/CatalogResourceResolver$Input;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v1, "i":Lorg/teleal/common/xml/CatalogResourceResolver$Input;
    invoke-virtual {v1, p5}, Lorg/teleal/common/xml/CatalogResourceResolver$Input;->setBaseURI(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p4}, Lorg/teleal/common/xml/CatalogResourceResolver$Input;->setSystemId(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, p3}, Lorg/teleal/common/xml/CatalogResourceResolver$Input;->setPublicId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "i":Lorg/teleal/common/xml/CatalogResourceResolver$Input;
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lorg/teleal/common/xml/CatalogResourceResolver;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System identifier not found in catalog, continuing with default resolution (this most likely means remote HTTP request!): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method
