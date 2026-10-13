.class public abstract Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
.super Lorg/teleal/common/xml/DOMElement$Builder;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xml/DOMElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ArrayBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/teleal/common/xml/DOMElement;",
        ">",
        "Lorg/teleal/common/xml/DOMElement",
        "<TCHI",
        "LD;",
        "TPARENT;>.Builder<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/xml/DOMElement;


# direct methods
.method protected constructor <init>(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V
    .locals 0
    .param p2, "element"    # Lorg/teleal/common/xml/DOMElement;

    .prologue
    .line 291
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$ArrayBuilder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.ArrayBuilder<TT;>;"
    iput-object p1, p0, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->this$0:Lorg/teleal/common/xml/DOMElement;

    .line 292
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement$Builder;-><init>(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V

    .line 293
    return-void
.end method


# virtual methods
.method protected buildArray([Lorg/teleal/common/xml/DOMElement;)[Lorg/teleal/common/xml/DOMElement;
    .locals 3
    .param p1, "list"    # [Lorg/teleal/common/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/teleal/common/xml/DOMElement;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$ArrayBuilder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.ArrayBuilder<TT;>;"
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    .line 307
    .local v0, "children":[Lorg/teleal/common/xml/DOMElement;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 308
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-object v0
.end method

.method public getChildElements()[Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$ArrayBuilder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.ArrayBuilder<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->element:Lorg/teleal/common/xml/DOMElement;

    invoke-virtual {v0}, Lorg/teleal/common/xml/DOMElement;->getChildren()[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->buildArray([Lorg/teleal/common/xml/DOMElement;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getChildElements(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$ArrayBuilder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.ArrayBuilder<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->element:Lorg/teleal/common/xml/DOMElement;

    invoke-virtual {v0, p1}, Lorg/teleal/common/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;->buildArray([Lorg/teleal/common/xml/DOMElement;)[Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method
