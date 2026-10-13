.class public Lorg/teleal/common/xhtml/XHTMLParser;
.super Lorg/teleal/common/xml/DOMParser;
.source "XHTMLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMParser",
        "<",
        "Lorg/teleal/common/xhtml/XHTML;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lorg/teleal/common/xhtml/XHTML;->createSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/teleal/common/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    .line 36
    return-void
.end method


# virtual methods
.method public checkDuplicateIdentifiers(Lorg/teleal/common/xhtml/XHTML;)V
    .locals 4
    .param p1, "document"    # Lorg/teleal/common/xhtml/XHTML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v0, "identifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v2, Lorg/teleal/common/xhtml/XHTMLParser$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v0}, Lorg/teleal/common/xhtml/XHTMLParser$1;-><init>(Lorg/teleal/common/xhtml/XHTMLParser;SLjava/util/Set;)V

    invoke-static {v1, v2}, Lorg/teleal/common/xhtml/XHTMLParser;->accept(Lorg/w3c/dom/Node;Lorg/teleal/common/xml/DOMParser$NodeVisitor;)V

    .line 60
    return-void
.end method

.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xhtml/XHTML;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    new-instance v0, Lorg/teleal/common/xhtml/XHTML;

    invoke-direct {v0, p1}, Lorg/teleal/common/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Document;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/XHTMLParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xhtml/XHTML;

    move-result-object v0

    return-object v0
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/teleal/common/xml/NamespaceContextMap;
    .locals 6
    .param p1, "optionalPrefixes"    # [Ljava/lang/String;

    .prologue
    .line 63
    new-instance v1, Lorg/teleal/common/xhtml/XHTMLParser$2;

    invoke-direct {v1, p0}, Lorg/teleal/common/xhtml/XHTMLParser$2;-><init>(Lorg/teleal/common/xhtml/XHTMLParser;)V

    .line 69
    .local v1, "ctx":Lorg/teleal/common/xml/NamespaceContextMap;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 70
    .local v4, "optionalPrefix":Ljava/lang/String;
    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v4, v5}, Lorg/teleal/common/xml/NamespaceContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "optionalPrefix":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "h"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/XHTMLParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/teleal/common/xml/NamespaceContextMap;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
