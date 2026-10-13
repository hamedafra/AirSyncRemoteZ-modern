.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescMetaHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<",
        "Lorg/teleal/cling/support/model/DescMeta;",
        ">;"
    }
.end annotation


# instance fields
.field protected current:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 1
    .param p2, "instance"    # Lorg/teleal/cling/support/model/DescMeta;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 1014
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 1015
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 1016
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DescMeta;->createMetadataDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/teleal/cling/support/model/DescMeta;->setMetadata(Ljava/lang/Object;)V

    .line 1017
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1018
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-super {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\t\\n\\x0B\\f\\r\\s]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1050
    :cond_1
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->characters:Ljava/lang/StringBuilder;

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->attributes:Lorg/xml/sax/Attributes;

    goto :goto_0
.end method

.method public bridge synthetic getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/teleal/cling/support/model/DescMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/support/model/DescMeta",
            "<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-super {p0}, Lorg/teleal/common/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DescMeta;

    return-object v0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "desc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
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
    .line 1027
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1029
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Document;

    invoke-interface {v2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1030
    .local v1, "newEl":Lorg/w3c/dom/Element;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1037
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1038
    iput-object v1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1039
    return-void

    .line 1032
    :cond_0
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-interface {v1, v2, v3, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
