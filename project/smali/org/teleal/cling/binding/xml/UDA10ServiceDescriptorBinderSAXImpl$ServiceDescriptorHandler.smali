.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ServiceDescriptorHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<TI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-direct {p0, p1}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0
    .param p2, "parent"    # Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 401
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V
    .locals 0
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    .line 397
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;
    .param p3, "parent"    # Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser;",
            "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 405
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {p2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-result-object v0

    .line 419
    .local v0, "el":Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;->endElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)V

    goto :goto_0
.end method

.method public endElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)V
    .locals 0
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    return-void
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 425
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    invoke-static {p2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-result-object v0

    .line 426
    .local v0, "el":Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;->isLastElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .prologue
    .line 438
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 410
    invoke-static {p2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-result-object v0

    .line 411
    .local v0, "el":Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, v0, p4}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;->startElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method

.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;, "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<TI;>;"
    return-void
.end method
