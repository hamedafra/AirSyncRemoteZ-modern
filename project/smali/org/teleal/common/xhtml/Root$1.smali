.class Lorg/teleal/common/xhtml/Root$1;
.super Lorg/teleal/common/xml/DOMElement$Builder;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/xhtml/Root;->getHead()Lorg/teleal/common/xhtml/Head;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMElement",
        "<",
        "Lorg/teleal/common/xhtml/XHTMLElement;",
        "Lorg/teleal/common/xhtml/XHTMLElement;",
        ">.Builder<",
        "Lorg/teleal/common/xhtml/Head;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/xhtml/Root;


# direct methods
.method constructor <init>(Lorg/teleal/common/xhtml/Root;Lorg/teleal/common/xml/DOMElement;)V
    .locals 0
    .param p2, "x0"    # Lorg/teleal/common/xml/DOMElement;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/teleal/common/xhtml/Root$1;->this$0:Lorg/teleal/common/xhtml/Root;

    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement$Builder;-><init>(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xhtml/Head;
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/common/xhtml/Head;

    iget-object v1, p0, Lorg/teleal/common/xhtml/Root$1;->this$0:Lorg/teleal/common/xhtml/Root;

    invoke-virtual {v1}, Lorg/teleal/common/xhtml/Root;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/common/xhtml/Head;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/teleal/common/xhtml/Root$1;->build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xhtml/Head;

    move-result-object v0

    return-object v0
.end method
