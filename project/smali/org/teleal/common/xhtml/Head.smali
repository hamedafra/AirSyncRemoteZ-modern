.class public Lorg/teleal/common/xhtml/Head;
.super Lorg/teleal/common/xhtml/XHTMLElement;
.source "Head.java"


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
.method public getDocumentStyles()[Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/common/xhtml/Head;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->style:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getHeadTitle()Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/teleal/common/xhtml/Head;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->title:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->firstChildOrNull(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getLinks()[Lorg/teleal/common/xhtml/Link;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/common/xhtml/Head$1;

    invoke-direct {v0, p0, p0}, Lorg/teleal/common/xhtml/Head$1;-><init>(Lorg/teleal/common/xhtml/Head;Lorg/teleal/common/xml/DOMElement;)V

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->link:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xhtml/Head$1;->getChildElements(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/Link;

    return-object v0
.end method

.method public getMetas()[Lorg/teleal/common/xhtml/Meta;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/teleal/common/xhtml/Head$2;

    invoke-direct {v0, p0, p0}, Lorg/teleal/common/xhtml/Head$2;-><init>(Lorg/teleal/common/xhtml/Head;Lorg/teleal/common/xml/DOMElement;)V

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->meta:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xhtml/Head$2;->getChildElements(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/Meta;

    return-object v0
.end method

.method public getScripts()[Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/teleal/common/xhtml/Head;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->script:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method
