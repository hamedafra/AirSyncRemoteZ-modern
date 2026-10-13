.class public abstract Lorg/teleal/common/xml/DOMElement;
.super Ljava/lang/Object;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/xml/DOMElement$ArrayBuilder;,
        Lorg/teleal/common/xml/DOMElement$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lorg/teleal/common/xml/DOMElement;",
        "PARENT:",
        "Lorg/teleal/common/xml/DOMElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.ArrayBuilder<TCHI",
            "LD;",
            ">;"
        }
    .end annotation
.end field

.field public final PARENT_BUILDER:Lorg/teleal/common/xml/DOMElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;"
        }
    .end annotation
.end field

.field private element:Lorg/w3c/dom/Element;

.field private final xpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 51
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/teleal/common/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    .line 53
    iput-object p2, p0, Lorg/teleal/common/xml/DOMElement;->element:Lorg/w3c/dom/Element;

    .line 54
    invoke-virtual {p0, p0}, Lorg/teleal/common/xml/DOMElement;->createParentBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/xml/DOMElement;->PARENT_BUILDER:Lorg/teleal/common/xml/DOMElement$Builder;

    .line 55
    invoke-virtual {p0, p0}, Lorg/teleal/common/xml/DOMElement;->createChildBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    .line 56
    return-void
.end method


# virtual methods
.method protected adoptOrImport(Lorg/w3c/dom/Document;Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p3, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p2, "child":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    if-eqz p1, :cond_0

    .line 175
    if-eqz p3, :cond_1

    .line 176
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p2}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object p2

    .line 185
    :cond_0
    :goto_0
    return-object p2

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p2}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object p2

    goto :goto_0
.end method

.method public appendChild(Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;
    .locals 2
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "el":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/teleal/common/xml/DOMElement;->adoptOrImport(Lorg/w3c/dom/Document;Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 146
    return-object p1
.end method

.method public createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xml/DOMElement;->createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v2, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    .line 139
    .local v0, "child":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 140
    return-object v0

    .line 134
    .end local v0    # "child":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract createChildBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement;",
            ")",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.ArrayBuilder<TCHI",
            "LD;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createParentBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement;",
            ")",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;"
        }
    .end annotation
.end method

.method public findChildWithIdentifier(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {p0, v3}, Lorg/teleal/common/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[@id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/xml/DOMElement;->getXPathChildElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 121
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TCHILD;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/xml/DOMElement;

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/teleal/common/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/xml/DOMElement;->getXPathChildElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 116
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TCHILD;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/common/xml/DOMElement;

    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 76
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()[Lorg/teleal/common/xml/DOMElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 91
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<TCHILD;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 93
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 94
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 95
    iget-object v4, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v4, v2}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v4, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/teleal/common/xml/DOMElement;

    return-object v4
.end method

.method public getChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/common/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/xml/DOMElement;->getXPathChildElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 103
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TCHILD;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/common/xml/DOMElement;

    return-object v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/DOMElement;->CHILD_BUILDER:Lorg/teleal/common/xml/DOMElement$ArrayBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/teleal/common/xml/DOMElement;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/xml/DOMElement;->getXPathChildElement(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/teleal/common/xml/DOMElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPARENT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->PARENT_BUILDER:Lorg/teleal/common/xml/DOMElement$Builder;

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0}, Lorg/teleal/common/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/common/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    .line 108
    .local v0, "children":[Lorg/teleal/common/xml/DOMElement;, "[TCHILD;"
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 109
    new-instance v1, Lorg/teleal/common/xml/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required single child element of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getW3CElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/DOMElement;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getXPathChildElement(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p2, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "builder":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TCHILD;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v1, p2, v2}, Lorg/teleal/common/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 239
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p1, v0}, Lorg/teleal/common/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getXPathChildElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p2, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TCHI",
            "LD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "builder":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TCHILD;>;"
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement;->getXPathElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXPathElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .param p1, "builder"    # Lorg/teleal/common/xml/DOMElement$Builder;
    .param p2, "expr"    # Ljava/lang/String;

    .prologue
    .line 243
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "col":Ljava/util/Collection;
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v4

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v4, p2, v5}, Lorg/teleal/common/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 245
    .local v3, "result":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 246
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v4}, Lorg/teleal/common/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    .line 247
    .local v1, "e":Lorg/teleal/common/xml/DOMElement;
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "e":Lorg/teleal/common/xml/DOMElement;
    :cond_0
    return-object v0
.end method

.method public getXPathParentElement(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p2, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TPARENT;>;",
            "Ljava/lang/String;",
            ")TPARENT;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "builder":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v1, p2, v2}, Lorg/teleal/common/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 234
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p1, v0}, Lorg/teleal/common/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getXPathParentElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p2, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>.Builder<TCHI",
            "LD;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TPARENT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "builder":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TCHILD;>;"
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement;->getXPathElements(Lorg/teleal/common/xml/DOMElement$Builder;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "result"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 257
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/teleal/common/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/w3c/dom/Node;
    .param p2, "expr"    # Ljava/lang/String;
    .param p3, "result"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 263
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    if-nez p3, :cond_0

    .line 264
    :try_start_0
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v1, p2, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v1, p2, p1, p3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getXPathString(Ljavax/xml/xpath/XPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "expr"    # Ljava/lang/String;

    .prologue
    .line 253
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/teleal/common/xml/DOMElement;->getXPathResult(Lorg/w3c/dom/Node;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpath()Ljavax/xml/xpath/XPath;
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/DOMElement;->xpath:Ljavax/xml/xpath/XPath;

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 221
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    return-object p1
.end method

.method public removeChild(Lorg/teleal/common/xml/DOMElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "el":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 163
    return-void
.end method

.method public removeChildren()V
    .locals 4

    .prologue
    .line 166
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 167
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 169
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method public replaceChild(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p3, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHI",
            "LD;",
            "TCHI",
            "LD;",
            "Z)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    .local p1, "original":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    .local p2, "replacement":Lorg/teleal/common/xml/DOMElement;, "TCHILD;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/teleal/common/xml/DOMElement;->adoptOrImport(Lorg/w3c/dom/Document;Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;

    move-result-object p2

    .line 151
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    return-object p2
.end method

.method public replaceEqualChild(Lorg/teleal/common/xml/DOMElement;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Lorg/teleal/common/xml/DOMElement;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 156
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0, p2}, Lorg/teleal/common/xml/DOMElement;->findChildWithIdentifier(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    .line 157
    .local v0, "original":Lorg/teleal/common/xml/DOMElement;
    invoke-virtual {p1, p2}, Lorg/teleal/common/xml/DOMElement;->findChildWithIdentifier(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    .line 158
    .local v1, "replacement":Lorg/teleal/common/xml/DOMElement;
    invoke-virtual {v0}, Lorg/teleal/common/xml/DOMElement;->getParent()Lorg/teleal/common/xml/DOMElement;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/teleal/common/xml/DOMElement;->replaceChild(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;Z)Lorg/teleal/common/xml/DOMElement;

    .line 159
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/common/xml/DOMElement",
            "<TCHI",
            "LD;",
            "TPARENT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 72
    return-object p0
.end method

.method public toSimpleXMLString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 194
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 197
    .local v2, "map":Lorg/w3c/dom/NamedNodeMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 198
    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 199
    .local v0, "attr":Lorg/w3c/dom/Node;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 203
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    :cond_1
    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    .local p0, "this":Lorg/teleal/common/xml/DOMElement;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UNBOUND"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
