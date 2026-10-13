.class Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxXmlUtil.java"


# instance fields
.field private action:Lcom/hisilicon/multiscreen/protocol/message/Action;

.field argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

.field myString:Ljava/lang/String;

.field value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 222
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

    .line 224
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .line 226
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 287
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 249
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v9, "name"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 305
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    iget-object v10, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    .line 376
    return-void

    .line 307
    :cond_1
    const-string v9, "value"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 309
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Integer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 311
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 312
    .local v6, "mInteger":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v6}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 368
    .end local v6    # "mInteger":Ljava/lang/Integer;
    :goto_1
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

    iget-object v10, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Short"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 316
    new-instance v8, Ljava/lang/Short;

    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 317
    .local v8, "mShort":Ljava/lang/Short;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    .end local v8    # "mShort":Ljava/lang/Short;
    :cond_3
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Byte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 321
    new-instance v2, Ljava/lang/Byte;

    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "mByte":Ljava/lang/Byte;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 324
    .end local v2    # "mByte":Ljava/lang/Byte;
    :cond_4
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 327
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 328
    .local v7, "mLong":Ljava/lang/Long;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v7}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 330
    .end local v7    # "mLong":Ljava/lang/Long;
    :cond_5
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Float"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 333
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 334
    .local v5, "mFloat":Ljava/lang/Float;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 336
    .end local v5    # "mFloat":Ljava/lang/Float;
    :cond_6
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Double"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 339
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 340
    .local v4, "mDouble":Ljava/lang/Double;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v4}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 342
    .end local v4    # "mDouble":Ljava/lang/Double;
    :cond_7
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Boolean"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 345
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 346
    .local v1, "mBoolean":Ljava/lang/Boolean;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 348
    .end local v1    # "mBoolean":Ljava/lang/Boolean;
    :cond_8
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Date"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 350
    new-instance v3, Ljava/util/Date;

    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, "mDate":Ljava/util/Date;
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v3}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 353
    .end local v3    # "mDate":Ljava/util/Date;
    :cond_9
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "String"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 355
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-static {v9}, Lcom/hisilicon/multiscreen/protocol/utils/SpecialCharUtil;->getSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    .line 356
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    iget-object v10, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 358
    :cond_a
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "byte[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 360
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 361
    .local v0, "data":[B
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v9, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 365
    .end local v0    # "data":[B
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vaule is other type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-virtual {v10}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 370
    :cond_c
    const-string v9, "argument"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 372
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    iget-object v10, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    goto/16 :goto_0
.end method

.method public getAction()Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 237
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->myString:Ljava/lang/String;

    .line 258
    const-string v0, "action"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 261
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "response"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    const-string v1, "responseFlag"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->action:Lcom/hisilicon/multiscreen/protocol/message/Action;

    const-string v1, "responseId"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .line 271
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->value:Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    const-string v0, "argument"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

    .line 278
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->argument:Lcom/hisilicon/multiscreen/protocol/message/Argument;

    const-string v1, "number"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->setArgumentValueNum(I)V

    goto :goto_0
.end method
