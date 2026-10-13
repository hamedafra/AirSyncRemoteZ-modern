.class public Lorg/teleal/common/xhtml/XHTML;
.super Lorg/teleal/common/xml/DOM;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/xhtml/XHTML$ATTR;,
        Lorg/teleal/common/xhtml/XHTML$ELEMENT;
    }
.end annotation


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final SCHEMA_RESOURCE:Ljava/lang/String; = "org/teleal/common/schemas/xhtml1-strict.xsd"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "dom"    # Lorg/w3c/dom/Document;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/teleal/common/xml/DOM;-><init>(Lorg/w3c/dom/Document;)V

    .line 63
    return-void
.end method

.method public static createSchemaSources()[Ljavax/xml/transform/Source;
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    const-class v3, Lorg/teleal/common/xhtml/XHTML;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org/teleal/common/schemas/xhtml1-strict.xsd"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/teleal/common/xhtml/XHTML;
    .locals 3

    .prologue
    .line 82
    new-instance v1, Lorg/teleal/common/xhtml/XHTML;

    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-direct {v1, v0}, Lorg/teleal/common/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    return-object v1
.end method

.method public bridge synthetic copy()Lorg/teleal/common/xml/DOM;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTML;->copy()Lorg/teleal/common/xhtml/XHTML;

    move-result-object v0

    return-object v0
.end method

.method public createRoot(Ljavax/xml/xpath/XPath;Lorg/teleal/common/xhtml/XHTML$ELEMENT;)Lorg/teleal/common/xhtml/Root;
    .locals 1
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "elememt"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .prologue
    .line 66
    invoke-virtual {p2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOM;->createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 67
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/teleal/common/xhtml/Root;

    move-result-object v0

    return-object v0
.end method

.method public getRoot(Ljavax/xml/xpath/XPath;)Lorg/teleal/common/xhtml/Root;
    .locals 2
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;

    .prologue
    .line 77
    new-instance v0, Lorg/teleal/common/xhtml/Root;

    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTML;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/teleal/common/xhtml/Root;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getRoot(Ljavax/xml/xpath/XPath;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "x0"    # Ljavax/xml/xpath/XPath;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/teleal/common/xhtml/Root;

    move-result-object v0

    return-object v0
.end method

.method public getRootElementNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "http://www.w3.org/1999/xhtml"

    return-object v0
.end method
