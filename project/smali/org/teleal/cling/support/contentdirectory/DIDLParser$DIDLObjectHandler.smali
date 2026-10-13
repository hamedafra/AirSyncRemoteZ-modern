.class public abstract Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DIDLObjectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/teleal/cling/support/model/DIDLObject;",
        ">",
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLObject;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;, "Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler<TI;>;"
    .local p2, "instance":Lorg/teleal/cling/support/model/DIDLObject;, "TI;"
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 620
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 621
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;, "Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler<TI;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v4, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 629
    const-string v4, "title"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const-string v4, "creator"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 632
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->setCreator(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    goto :goto_0

    .line 633
    :cond_2
    const-string v4, "description"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto :goto_0

    .line 635
    :cond_3
    const-string v4, "publisher"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    new-instance v6, Lorg/teleal/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto :goto_0

    .line 637
    :cond_4
    const-string v4, "contributor"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 638
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    new-instance v6, Lorg/teleal/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto :goto_0

    .line 639
    :cond_5
    const-string v4, "date"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 640
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 641
    :cond_6
    const-string v4, "language"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 642
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 643
    :cond_7
    const-string v4, "rights"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 644
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 645
    :cond_8
    const-string v4, "relation"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 649
    :cond_9
    const-string v4, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    const-string v4, "writeStatus"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 654
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/teleal/cling/support/model/WriteStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/WriteStatus;

    move-result-object v5

    .line 653
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring invalid writeStatus value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_a
    const-string v4, "class"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 660
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 661
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 662
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 666
    :cond_b
    const-string v4, "artist"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 667
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 668
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    .line 669
    new-instance v6, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v8

    const-string v9, "role"

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    .line 667
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 672
    :cond_c
    const-string v4, "actor"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 673
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 674
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    .line 675
    new-instance v6, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v8

    const-string v9, "role"

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    .line 673
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 678
    :cond_d
    const-string v4, "author"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 679
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 680
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    .line 681
    new-instance v6, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v8

    const-string v9, "role"

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    .line 679
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 684
    :cond_e
    const-string v4, "producer"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 685
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 686
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    new-instance v6, Lorg/teleal/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    .line 685
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 688
    :cond_f
    const-string v4, "director"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 689
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 690
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    new-instance v6, Lorg/teleal/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    .line 689
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 692
    :cond_10
    const-string v4, "longDescription"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 693
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 694
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 696
    :cond_11
    const-string v4, "storageUsed"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 697
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 698
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    .line 697
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 700
    :cond_12
    const-string v4, "storageTotal"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 701
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 702
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    .line 701
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 704
    :cond_13
    const-string v4, "storageFree"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 705
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 706
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    .line 705
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 708
    :cond_14
    const-string v4, "storageMaxPartition"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 709
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 710
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    .line 709
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 712
    :cond_15
    const-string v4, "storageMedium"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 713
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 714
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/teleal/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    .line 713
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 716
    :cond_16
    const-string v4, "genre"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 717
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 718
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 720
    :cond_17
    const-string v4, "album"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 721
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 722
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 724
    :cond_18
    const-string v4, "playlist"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 725
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 726
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 728
    :cond_19
    const-string v4, "region"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 729
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 730
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 732
    :cond_1a
    const-string v4, "rating"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 733
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 734
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 736
    :cond_1b
    const-string v4, "toc"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 737
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 738
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 740
    :cond_1c
    const-string v4, "albumArtURI"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 741
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    .line 743
    .local v0, "albumArtURI":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 744
    .local v1, "albumArtURIAttributes":Lorg/xml/sax/Attributes;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_1d

    .line 756
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {v4, v0}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 745
    :cond_1d
    const-string v4, "profileID"

    invoke-interface {v1, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 747
    new-instance v4, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    .line 748
    new-instance v5, Lorg/teleal/cling/support/model/DIDLAttribute;

    .line 749
    const-string v6, "urn:schemas-dlna-org:metadata-1-0/"

    .line 750
    const-string v7, "dlna"

    .line 751
    invoke-interface {v1, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 748
    invoke-direct {v5, v6, v7, v8}, Lorg/teleal/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    .line 746
    invoke-virtual {v0, v4}, Lorg/teleal/cling/support/model/DIDLObject$Property;->addAttribute(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    .line 744
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    .end local v0    # "albumArtURI":Lorg/teleal/cling/support/model/DIDLObject$Property;
    .end local v1    # "albumArtURIAttributes":Lorg/xml/sax/Attributes;
    .end local v3    # "i":I
    :cond_1f
    const-string v4, "artistDiscographyURI"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 758
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 759
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    .line 758
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 761
    :cond_20
    const-string v4, "lyricsURI"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 762
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 763
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;-><init>(Ljava/net/URI;)V

    .line 762
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 765
    :cond_21
    const-string v4, "icon"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 766
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 767
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    .line 766
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 769
    :cond_22
    const-string v4, "radioCallSign"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 770
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 771
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 773
    :cond_23
    const-string v4, "radioStationID"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 774
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 775
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 777
    :cond_24
    const-string v4, "radioBand"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 778
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 779
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 781
    :cond_25
    const-string v4, "channelNr"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 782
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 783
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    .line 782
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 785
    :cond_26
    const-string v4, "channelName"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 786
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 787
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 789
    :cond_27
    const-string v4, "scheduledStartTime"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 790
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 791
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 793
    :cond_28
    const-string v4, "scheduledEndTime"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 794
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 795
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 797
    :cond_29
    const-string v4, "DVDRegionCode"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 798
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 799
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    .line 798
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 801
    :cond_2a
    const-string v4, "originalTrackNumber"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 802
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 803
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    .line 802
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 805
    :cond_2b
    const-string v4, "userAnnotation"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 806
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 807
    new-instance v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v4, v5}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto/16 :goto_0
.end method
