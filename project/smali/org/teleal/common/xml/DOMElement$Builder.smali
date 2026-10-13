.class public abstract Lorg/teleal/common/xml/DOMElement$Builder;
.super Ljava/lang/Object;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xml/DOMElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/teleal/common/xml/DOMElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public element:Lorg/teleal/common/xml/DOMElement;

.field final synthetic this$0:Lorg/teleal/common/xml/DOMElement;


# direct methods
.method protected constructor <init>(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V
    .locals 0
    .param p2, "element"    # Lorg/teleal/common/xml/DOMElement;

    .prologue
    .line 276
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TT;>;"
    iput-object p1, p0, Lorg/teleal/common/xml/DOMElement$Builder;->this$0:Lorg/teleal/common/xml/DOMElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lorg/teleal/common/xml/DOMElement$Builder;->element:Lorg/teleal/common/xml/DOMElement;

    .line 278
    return-void
.end method


# virtual methods
.method public abstract build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")TT;"
        }
    .end annotation
.end method

.method public firstChildOrNull(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lorg/teleal/common/xml/DOMElement$Builder;, "Lorg/teleal/common/xml/DOMElement<TCHILD;TPARENT;>.Builder<TT;>;"
    iget-object v1, p0, Lorg/teleal/common/xml/DOMElement$Builder;->element:Lorg/teleal/common/xml/DOMElement;

    invoke-virtual {v1, p1}, Lorg/teleal/common/xml/DOMElement;->getFirstChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    .line 284
    .local v0, "el":Lorg/teleal/common/xml/DOMElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/common/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
