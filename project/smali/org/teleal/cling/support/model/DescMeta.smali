.class public Lorg/teleal/cling/support/model/DescMeta;
.super Ljava/lang/Object;
.source "DescMeta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/String;

.field protected metadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected nameSpace:Ljava/net/URI;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "nameSpace"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    .local p4, "metadata":Ljava/lang/Object;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/teleal/cling/support/model/DescMeta;->id:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/teleal/cling/support/model/DescMeta;->type:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/teleal/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    .line 61
    iput-object p4, p0, Lorg/teleal/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public createMetadataDocument()Lorg/w3c/dom/Document;
    .locals 6

    .prologue
    .line 98
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 99
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 100
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 101
    .local v0, "d":Lorg/w3c/dom/Document;
    const-string v4, "urn:teleal-org:cling:support:content-directory-desc-1-0"

    const-string v5, "desc-wrapper"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 102
    .local v3, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v0

    .line 104
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DescMeta;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameSpace()Ljava/net/URI;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DescMeta;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DescMeta;->id:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMetadata(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    .local p1, "metadata":Ljava/lang/Object;, "TM;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DescMeta;->metadata:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setNameSpace(Ljava/net/URI;)V
    .locals 0
    .param p1, "nameSpace"    # Ljava/net/URI;

    .prologue
    .line 85
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DescMeta;->nameSpace:Ljava/net/URI;

    .line 86
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    .local p0, "this":Lorg/teleal/cling/support/model/DescMeta;, "Lorg/teleal/cling/support/model/DescMeta<TM;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DescMeta;->type:Ljava/lang/String;

    .line 78
    return-void
.end method
