.class public Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;
.super Lorg/teleal/common/xml/DOMParser;
.source "MessageDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/DOMParser",
        "<",
        "Lorg/teleal/cling/support/messagebox/parser/MessageDOM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/common/xml/DOMParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/cling/support/messagebox/parser/MessageDOM;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 33
    new-instance v0, Lorg/teleal/cling/support/messagebox/parser/MessageDOM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageDOM;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/cling/support/messagebox/parser/MessageDOM;

    move-result-object v0

    return-object v0
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/teleal/common/xml/NamespaceContextMap;
    .locals 5
    .param p1, "optionalPrefixes"    # [Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser$1;

    invoke-direct {v0, p0}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser$1;-><init>(Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;)V

    .line 43
    .local v0, "ctx":Lorg/teleal/common/xml/NamespaceContextMap;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 46
    return-object v0

    .line 43
    :cond_0
    aget-object v1, p1, v2

    .line 44
    .local v1, "optionalPrefix":Ljava/lang/String;
    const-string v4, "urn:samsung-com:messagebox-1-0"

    invoke-virtual {v0, v1, v4}, Lorg/teleal/common/xml/NamespaceContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/teleal/common/xml/NamespaceContextMap;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
