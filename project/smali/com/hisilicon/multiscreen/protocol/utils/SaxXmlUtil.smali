.class public Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;
.super Ljava/lang/Object;
.source "SaxXmlUtil.java"


# static fields
.field public static final ENCODE_UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 54
    .local v0, "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 55
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    if-nez p1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 63
    :goto_0
    return-object v3

    .line 61
    :cond_0
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;-><init>()V

    .line 62
    .local v2, "xmlHandler":Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;
    invoke-virtual {v1, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 63
    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->getAction()Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v3

    goto :goto_0
.end method

.method public parse([B)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 5
    .param p1, "msgByte"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 85
    .local v0, "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 86
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    if-nez p1, :cond_0

    .line 88
    const-string v4, "msgByte is null"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 89
    const/4 v4, 0x0

    .line 96
    :goto_0
    return-object v4

    .line 93
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    .local v2, "vimeMsgInstream":Ljava/io/ByteArrayInputStream;
    new-instance v3, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;

    invoke-direct {v3}, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;-><init>()V

    .line 95
    .local v3, "xmlHandler":Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;
    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 96
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/utils/XMLHandler;->getAction()Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v4

    goto :goto_0
.end method

.method public serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    .locals 23
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 114
    const-string v5, "action is null"

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 115
    const/4 v5, 0x0

    .line 213
    :goto_0
    return-object v5

    .line 117
    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    check-cast v11, Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 118
    .local v11, "factory":Ljavax/xml/transform/sax/SAXTransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v12

    .line 119
    .local v12, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    invoke-interface {v12}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v19

    .line 120
    .local v19, "transformer":Ljavax/xml/transform/Transformer;
    const-string v5, "encoding"

    const-string v6, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "indent"

    const-string v6, "yes"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "omit-xml-declaration"

    const-string v6, "no"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v21, "writer":Ljava/io/StringWriter;
    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 126
    .local v17, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 128
    const-string v3, ""

    .line 129
    .local v3, "uri":Ljava/lang/String;
    const-string v4, ""

    .line 130
    .local v4, "localName":Ljava/lang/String;
    const-string v16, ""

    .line 132
    .local v16, "qName":Ljava/lang/String;
    invoke-interface {v12}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 134
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 135
    .local v2, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v9, 0x0

    .line 136
    .local v9, "ch":[C
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 137
    const-string v5, "id"

    const-string v6, "String"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0x"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "action"

    invoke-interface {v12, v3, v4, v5, v2}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 141
    const-string v5, "name"

    const/4 v6, 0x0

    invoke-interface {v12, v3, v4, v5, v6}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 143
    const/4 v5, 0x0

    array-length v6, v9

    invoke-interface {v12, v9, v5, v6}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 144
    const-string v5, "name"

    invoke-interface {v12, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgumentList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 150
    const/16 v18, 0x0

    .line 151
    .local v18, "tmpValue":Ljava/lang/String;
    const-string v5, "number"

    const-string v6, "String"

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgumentList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "argumentList"

    invoke-interface {v12, v3, v4, v5, v2}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 155
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 156
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgumentList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_5

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v8

    .line 159
    .local v8, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const-string v5, "number"

    const-string v6, "String"

    .line 160
    invoke-virtual {v8}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValueList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v5, "argument"

    invoke-interface {v12, v3, v4, v5, v2}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 162
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 163
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    invoke-virtual {v8}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValueList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_4

    .line 166
    const-string v5, "name"

    const-string v6, "String"

    .line 167
    invoke-virtual {v8, v15}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8, v15}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v20

    .line 169
    .local v20, "value":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const/4 v14, 0x0

    .line 170
    .local v14, "isByteArray":Z
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byte[]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    const/4 v14, 0x1

    .line 175
    :cond_1
    const-string v5, "type"

    const-string v6, "String"

    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v5, "value"

    invoke-interface {v12, v3, v4, v5, v2}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 179
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 181
    if-eqz v14, :cond_3

    .line 183
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v10, v5

    check-cast v10, [B

    .line 184
    .local v10, "data":[B
    const/4 v5, 0x0

    invoke-static {v10, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    .line 191
    .end local v10    # "data":[B
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 192
    const/4 v5, 0x0

    array-length v6, v9

    invoke-interface {v12, v9, v5, v6}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V

    .line 195
    :cond_2
    const-string v5, "value"

    invoke-interface {v12, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 197
    .end local v14    # "isByteArray":Z
    .end local v20    # "value":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    :cond_4
    const-string v5, "argument"

    invoke-interface {v12, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 199
    .end local v8    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    .end local v15    # "j":I
    :cond_5
    const-string v5, "argumentList"

    invoke-interface {v12, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v13    # "i":I
    .end local v18    # "tmpValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 203
    const-string v5, "responseFlag"

    const-string v6, "String"

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getResponseFlag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v5, "responseId"

    const-string v6, "String"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0x"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getResponseId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v5, "response"

    invoke-interface {v12, v3, v4, v5, v2}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 208
    move-object/from16 v0, v16

    invoke-interface {v12, v3, v4, v0}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v5, "action"

    invoke-interface {v12, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v12}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V

    .line 213
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method
