.class public abstract Lorg/teleal/common/xml/DOM;
.super Ljava/lang/Object;
.source "DOM.java"


# static fields
.field public static final CDATA_BEGIN:Ljava/lang/String; = "<![CDATA["

.field public static final CDATA_END:Ljava/lang/String; = "]]>"

.field public static final XML_SCHEMA_NAMESPACE:Ljava/net/URI;


# instance fields
.field private dom:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "http://www.w3.org/2001/xml.xsd"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/DOM;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "dom"    # Lorg/w3c/dom/Document;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/teleal/common/xml/DOM;->dom:Lorg/w3c/dom/Document;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/teleal/common/xml/DOM;
.end method

.method public createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOM;->getRootElementNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 50
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 51
    return-object v0
.end method

.method public abstract getRoot(Ljavax/xml/xpath/XPath;)Lorg/teleal/common/xml/DOMElement;
.end method

.method public abstract getRootElementNamespace()Ljava/lang/String;
.end method

.method public getW3CDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/teleal/common/xml/DOM;->dom:Lorg/w3c/dom/Document;

    return-object v0
.end method
