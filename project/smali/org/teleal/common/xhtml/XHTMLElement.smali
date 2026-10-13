.class public Lorg/teleal/common/xhtml/XHTMLElement;
.super Lorg/teleal/common/xml/DOMElement;
.source "XHTMLElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMElement",
        "<",
        "Lorg/teleal/common/xhtml/XHTMLElement;",
        "Lorg/teleal/common/xhtml/XHTMLElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final XPATH_PREFIX:Ljava/lang/String; = "h"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createChild(Lorg/teleal/common/xhtml/XHTML$ELEMENT;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 2
    .param p1, "el"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-super {p0, v0, v1}, Lorg/teleal/common/xml/DOMElement;->createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method protected createChildBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
    .locals 1
    .param p1, "el"    # Lorg/teleal/common/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement;",
            ")",
            "Lorg/teleal/common/xml/DOMElement",
            "<",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            ">.ArrayBuilder<",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/common/xhtml/XHTMLElement$2;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/xhtml/XHTMLElement$2;-><init>(Lorg/teleal/common/xhtml/XHTMLElement;Lorg/teleal/common/xml/DOMElement;)V

    return-object v0
.end method

.method protected createParentBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$Builder;
    .locals 1
    .param p1, "el"    # Lorg/teleal/common/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement;",
            ")",
            "Lorg/teleal/common/xml/DOMElement",
            "<",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            ">.Builder<",
            "Lorg/teleal/common/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/common/xhtml/XHTMLElement$1;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/xhtml/XHTMLElement$1;-><init>(Lorg/teleal/common/xhtml/XHTMLElement;Lorg/teleal/common/xml/DOMElement;)V

    return-object v0
.end method

.method public findAllAnchors(Ljava/lang/String;)[Lorg/teleal/common/xhtml/Anchor;
    .locals 1
    .param p1, "requiredScheme"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xhtml/XHTMLElement;->findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/teleal/common/xhtml/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/teleal/common/xhtml/Anchor;
    .locals 10
    .param p1, "requiredScheme"    # Ljava/lang/String;
    .param p2, "requiredClass"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v7, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->a:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {p0, v7, p2}, Lorg/teleal/common/xhtml/XHTMLElement;->findChildrenWithClass(Lorg/teleal/common/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/teleal/common/xhtml/XHTMLElement;

    move-result-object v3

    .line 152
    .local v3, "elements":[Lorg/teleal/common/xhtml/XHTMLElement;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/xhtml/Anchor;>;"
    move-object v1, v3

    .local v1, "arr$":[Lorg/teleal/common/xhtml/XHTMLElement;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v1, v5

    .line 154
    .local v2, "element":Lorg/teleal/common/xhtml/XHTMLElement;
    sget-object v7, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {v2, v7}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "href":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 156
    :cond_0
    new-instance v7, Lorg/teleal/common/xhtml/Anchor;

    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTMLElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v8

    invoke-virtual {v2}, Lorg/teleal/common/xhtml/XHTMLElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/xhtml/Anchor;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "element":Lorg/teleal/common/xhtml/XHTMLElement;
    .end local v4    # "href":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/teleal/common/xhtml/Anchor;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/teleal/common/xhtml/Anchor;

    return-object v7
.end method

.method public findChildren(Lorg/teleal/common/xhtml/XHTML$ELEMENT;)[Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "el"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOMElement;->findChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method public findChildrenWithClass(Lorg/teleal/common/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 12
    .param p1, "el"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;
    .param p2, "clazz"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/xhtml/XHTMLElement;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/XHTMLElement;->findChildren(Lorg/teleal/common/xhtml/XHTML$ELEMENT;)[Lorg/teleal/common/xhtml/XHTMLElement;

    move-result-object v4

    .line 165
    .local v4, "children":[Lorg/teleal/common/xhtml/XHTMLElement;
    move-object v0, v4

    .local v0, "arr$":[Lorg/teleal/common/xhtml/XHTMLElement;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v0    # "arr$":[Lorg/teleal/common/xhtml/XHTMLElement;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v3, v0, v6

    .line 166
    .local v3, "child":Lorg/teleal/common/xhtml/XHTMLElement;
    if-nez p2, :cond_1

    .line 167
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v6    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v3}, Lorg/teleal/common/xhtml/XHTMLElement;->getClasses()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_0

    aget-object v2, v1, v5

    .line 170
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 171
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 177
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "child":Lorg/teleal/common/xhtml/XHTMLElement;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .restart local v6    # "i$":I
    :cond_3
    iget-object v10, p0, Lorg/teleal/common/xhtml/XHTMLElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v10
.end method

.method public getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Lorg/teleal/common/xhtml/XHTML$ATTR;

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Lorg/teleal/common/xhtml/XHTML$ELEMENT;)[Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "el"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getClasses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string v1, "class"

    invoke-virtual {p0, v1}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 132
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getConstant()Lorg/teleal/common/xhtml/XHTML$ELEMENT;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTMLElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild(Lorg/teleal/common/xhtml/XHTML$ELEMENT;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "el"    # Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOMElement;->getFirstChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/XHTMLElement;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->id:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Lorg/teleal/common/xhtml/Option;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/teleal/common/xhtml/XHTMLElement;->getOptions()[Lorg/teleal/common/xhtml/Option;

    move-result-object v0

    .local v0, "arr$":[Lorg/teleal/common/xhtml/Option;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 141
    .local v3, "option":Lorg/teleal/common/xhtml/Option;
    invoke-virtual {v3}, Lorg/teleal/common/xhtml/Option;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    .end local v3    # "option":Lorg/teleal/common/xhtml/Option;
    :goto_1
    return-object v3

    .line 140
    .restart local v3    # "option":Lorg/teleal/common/xhtml/Option;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "option":Lorg/teleal/common/xhtml/Option;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOptions()[Lorg/teleal/common/xhtml/Option;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->style:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/xhtml/Option;->fromString(Ljava/lang/String;)[Lorg/teleal/common/xhtml/Option;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->title:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0}, Lorg/teleal/common/xhtml/XHTMLElement;->getAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 189
    return-object p0
.end method

.method public setAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "attribute"    # Lorg/teleal/common/xhtml/XHTML$ATTR;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p1}, Lorg/teleal/common/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/teleal/common/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 93
    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    move-result-object v0

    return-object v0
.end method

.method public setClasses(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "classes"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lorg/teleal/common/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 116
    return-object p0
.end method

.method public setClasses([Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 4
    .param p1, "classes"    # [Ljava/lang/String;

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 122
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const-string v2, "class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/teleal/common/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 126
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lorg/teleal/common/xml/DOMElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 183
    return-object p0
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/XHTMLElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->id:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/teleal/common/xhtml/XHTMLElement;->setAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 102
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->title:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {p0, v0, p1}, Lorg/teleal/common/xhtml/XHTMLElement;->setAttribute(Lorg/teleal/common/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTMLElement;

    .line 111
    return-object p0
.end method
