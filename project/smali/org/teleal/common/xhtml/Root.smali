.class public Lorg/teleal/common/xhtml/Root;
.super Lorg/teleal/common/xhtml/XHTMLElement;
.source "Root.java"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getBody()Lorg/teleal/common/xhtml/Body;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/teleal/common/xhtml/Root$2;

    invoke-direct {v0, p0, p0}, Lorg/teleal/common/xhtml/Root$2;-><init>(Lorg/teleal/common/xhtml/Root;Lorg/teleal/common/xml/DOMElement;)V

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->body:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xhtml/Root$2;->firstChildOrNull(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/Body;

    return-object v0
.end method

.method public getHead()Lorg/teleal/common/xhtml/Head;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lorg/teleal/common/xhtml/Root$1;

    invoke-direct {v0, p0, p0}, Lorg/teleal/common/xhtml/Root$1;-><init>(Lorg/teleal/common/xhtml/Root;Lorg/teleal/common/xml/DOMElement;)V

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->head:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xhtml/Root$1;->firstChildOrNull(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/Head;

    return-object v0
.end method
