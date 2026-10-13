.class Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstanceIDHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<",
        "Lorg/teleal/cling/support/lastchange/InstanceID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/InstanceID;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/lastchange/InstanceID;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .line 152
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v0, p2}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->equals(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 158
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    new-array v0, v4, [Ljava/util/Map$Entry;

    .line 159
    .local v0, "attributeMap":[Ljava/util/Map$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 167
    :try_start_0
    iget-object v4, p0, Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    invoke-virtual {v4, p2, v0}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->createValue(Ljava/lang/String;[Ljava/util/Map$Entry;)Lorg/teleal/cling/support/lastchange/EventedValue;

    move-result-object v1

    .line 168
    .local v1, "esv":Lorg/teleal/cling/support/lastchange/EventedValue;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/lastchange/InstanceID;

    invoke-virtual {v4}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "esv":Lorg/teleal/cling/support/lastchange/EventedValue;
    :cond_0
    :goto_1
    return-void

    .line 161
    :cond_1
    new-instance v4, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    .line 162
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-direct {v4, v5, v6}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    aput-object v4, v0, v3

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 172
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error reading event XML, ignoring value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method
