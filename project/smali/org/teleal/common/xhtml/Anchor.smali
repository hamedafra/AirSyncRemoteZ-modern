.class public Lorg/teleal/common/xhtml/Anchor;
.super Lorg/teleal/common/xhtml/XHTMLElement;
.source "Anchor.java"


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
.method public getHref()Lorg/teleal/common/xhtml/Href;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/Anchor;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/xhtml/Href;->fromString(Ljava/lang/String;)Lorg/teleal/common/xhtml/Href;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->type:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/Anchor;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)Lorg/teleal/common/xhtml/Anchor;
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/teleal/common/xhtml/Anchor;->setAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 47
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lorg/teleal/common/xhtml/Anchor;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->type:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/teleal/common/xhtml/Anchor;->setAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 38
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Anchor) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v1}, Lorg/teleal/common/xhtml/Anchor;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
