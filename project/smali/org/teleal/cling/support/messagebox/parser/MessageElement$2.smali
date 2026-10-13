.class Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;
.super Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
.source "MessageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChildBuilder(Lorg/teleal/common/xml/DOMElement;)Lorg/teleal/common/xml/DOMElement$ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMElement",
        "<",
        "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
        "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
        ">.ArrayBuilder<",
        "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/messagebox/parser/MessageElement;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/messagebox/parser/MessageElement;Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V
    .locals 0
    .param p3, "$anonymous0"    # Lorg/teleal/common/xml/DOMElement;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;->this$0:Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .line 53
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/DOMElement$ArrayBuilder;-><init>(Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Element;)Lorg/teleal/cling/support/messagebox/parser/MessageElement;
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 61
    new-instance v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    iget-object v1, p0, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;->this$0:Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic build(Lorg/w3c/dom/Element;)Lorg/teleal/common/xml/DOMElement;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;->build(Lorg/w3c/dom/Element;)Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    move-result-object v0

    return-object v0
.end method

.method public newChildrenArray(I)[Lorg/teleal/cling/support/messagebox/parser/MessageElement;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 56
    new-array v0, p1, [Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    return-object v0
.end method

.method public bridge synthetic newChildrenArray(I)[Lorg/teleal/common/xml/DOMElement;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;->newChildrenArray(I)[Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    move-result-object v0

    return-object v0
.end method
