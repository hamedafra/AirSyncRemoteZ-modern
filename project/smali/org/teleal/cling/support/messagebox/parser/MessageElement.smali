.class public Lorg/teleal/cling/support/messagebox/parser/MessageElement;
.super Lorg/teleal/common/xml/DOMElement;
.source "MessageElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMElement",
        "<",
        "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
        "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final XPATH_PREFIX:Ljava/lang/String; = "m"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/DOMElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 34
    return-void
.end method


# virtual methods
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
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            ">.ArrayBuilder<",
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;

    invoke-direct {v0, p0, p0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement$2;-><init>(Lorg/teleal/cling/support/messagebox/parser/MessageElement;Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V

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
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            ">.Builder<",
            "Lorg/teleal/cling/support/messagebox/parser/MessageElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement$1;

    invoke-direct {v0, p0, p0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement$1;-><init>(Lorg/teleal/cling/support/messagebox/parser/MessageElement;Lorg/teleal/common/xml/DOMElement;Lorg/teleal/common/xml/DOMElement;)V

    return-object v0
.end method

.method protected prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "m:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
