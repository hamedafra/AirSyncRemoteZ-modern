.class public abstract Lorg/teleal/common/xml/DOMParser;
.super Ljava/lang/Object;
.source "DOMParser.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/xml/DOMParser$NodeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/teleal/common/xml/DOM;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xml/sax/ErrorHandler;",
        "Lorg/xml/sax/EntityResolver;"
    }
.end annotation


# static fields
.field public static final XML_SCHEMA_RESOURCE:Ljava/net/URL;

.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected schema:Ljavax/xml/validation/Schema;

.field protected schemaSources:[Ljavax/xml/transform/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lorg/teleal/common/xml/DOMParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/DOMParser;->log:Ljava/util/logging/Logger;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/teleal/common/schemas/xml.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/DOMParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/common/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    .line 87
    return-void
.end method

.method public constructor <init>([Ljavax/xml/transform/Source;)V
    .locals 0
    .param p1, "schemaSources"    # [Ljavax/xml/transform/Source;

    .prologue
    .line 89
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/teleal/common/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    .line 91
    return-void
.end method

.method public static accept(Lorg/w3c/dom/Node;Lorg/teleal/common/xml/DOMParser$NodeVisitor;)V
    .locals 6
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "visitor"    # Lorg/teleal/common/xml/DOMParser$NodeVisitor;

    .prologue
    .line 545
    if-nez p0, :cond_1

    .line 557
    :cond_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 548
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 549
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 550
    .local v0, "child":Lorg/w3c/dom/Node;
    const/4 v2, 0x1

    .line 551
    .local v2, "cont":Z
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-static {p1}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->access$000(Lorg/teleal/common/xml/DOMParser$NodeVisitor;)S

    move-result v5

    if-ne v4, v5, :cond_2

    .line 552
    invoke-virtual {p1, v0}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->visit(Lorg/w3c/dom/Node;)V

    .line 553
    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    :cond_2
    invoke-static {v0, p1}, Lorg/teleal/common/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/teleal/common/xml/DOMParser$NodeVisitor;)V

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-static {p0, v0, v0}, Lorg/teleal/common/xml/DOMParser;->escape(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "convertNewlines"    # Z
    .param p2, "convertSpaces"    # Z

    .prologue
    .line 490
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 536
    :cond_0
    :goto_0
    return-object v5

    .line 491
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, "entity":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 497
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 511
    :goto_2
    if-eqz v1, :cond_2

    .line 512
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    :sswitch_0
    const-string v1, "&#60;"

    .line 500
    goto :goto_2

    .line 502
    :sswitch_1
    const-string v1, "&#62;"

    .line 503
    goto :goto_2

    .line 505
    :sswitch_2
    const-string v1, "&#38;"

    .line 506
    goto :goto_2

    .line 508
    :sswitch_3
    const-string v1, "&#34;"

    goto :goto_2

    .line 514
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 517
    .end local v0    # "c":C
    .end local v1    # "entity":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, "result":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 520
    const-string v9, "(\\n+)(\\s*)(.*)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 521
    .local v4, "matcher":Ljava/util/regex/Matcher;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 522
    .local v8, "temp":Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 523
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "group":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v7, "spaces":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 526
    const-string v9, "&#160;"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 528
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 530
    .end local v2    # "group":Ljava/lang/String;
    .end local v7    # "spaces":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "temp":Ljava/lang/StringBuffer;
    :cond_6
    if-eqz p1, :cond_0

    .line 534
    const-string v9, "\n"

    const-string v10, "<br/>"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static stripElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 540
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<([a-zA-Z]|/).*?>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "wrapperName"    # Ljava/lang/String;
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/teleal/common/xml/DOMParser;->wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "wrapperName"    # Ljava/lang/String;
    .param p1, "xmlns"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v0, "wrapper":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    if-eqz p1, :cond_0

    .line 582
    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected abstract createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")TD;"
        }
    .end annotation
.end method

.method public createDocument()Lorg/teleal/common/xml/DOM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/teleal/common/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/common/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4
    .param p1, "validating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 130
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 132
    if-eqz p1, :cond_0

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 139
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 140
    const-string v2, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 144
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 155
    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v2, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    if-lez p2, :cond_0

    .line 171
    :try_start_1
    const-string v3, "indent-number"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 178
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "omit-xml-declaration"

    if-eqz p3, :cond_2

    const-string v3, "no"

    :goto_1
    invoke-virtual {v2, v4, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "indent"

    if-lez p2, :cond_3

    const-string v3, "yes"

    :goto_2
    invoke-virtual {v2, v4, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-lez p2, :cond_1

    .line 181
    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    const-string v3, "method"

    invoke-virtual {v2, v3, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v2

    .line 178
    :cond_2
    const-string v3, "yes"

    goto :goto_1

    .line 179
    :cond_3
    const-string v3, "no"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 185
    .end local v1    # "transFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v3, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 172
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "transFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 2
    .param p1, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 302
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMParser;->createXPathFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 303
    .local v0, "xpath":Ljavax/xml/xpath/XPath;
    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 304
    return-object v0
.end method

.method public createXPath(Ljavax/xml/xpath/XPathFactory;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 1
    .param p1, "factory"    # Ljavax/xml/xpath/XPathFactory;
    .param p2, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 308
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 309
    .local v0, "xpath":Ljavax/xml/xpath/XPath;
    invoke-interface {v0, p2}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 310
    return-object v0
.end method

.method public createXPathFactory()Ljavax/xml/xpath/XPathFactory;
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    return-object v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/teleal/common/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/teleal/common/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    iget-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    if-nez v2, :cond_0

    .line 99
    :try_start_0
    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v2}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 101
    .local v1, "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    new-instance v2, Lorg/teleal/common/xml/CatalogResourceResolver;

    new-instance v3, Lorg/teleal/common/xml/DOMParser$1;

    invoke-direct {v3, p0}, Lorg/teleal/common/xml/DOMParser$1;-><init>(Lorg/teleal/common/xml/DOMParser;)V

    invoke-direct {v2, v3}, Lorg/teleal/common/xml/CatalogResourceResolver;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljavax/xml/validation/SchemaFactory;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    .line 107
    iget-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    invoke-virtual {v1, v2}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    return-object v2

    .line 110
    .restart local v1    # "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/validation/SchemaFactory;->newSchema()Ljavax/xml/validation/Schema;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/common/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getXPathResult(Lorg/teleal/common/xml/DOM;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .param p2, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p3, "expr"    # Ljava/lang/String;
    .param p4, "result"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 314
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p1}, Lorg/teleal/common/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/teleal/common/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/teleal/common/xml/DOMElement;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Lorg/teleal/common/xml/DOMElement;
    .param p2, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p3, "expr"    # Ljava/lang/String;
    .param p4, "result"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 318
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p1}, Lorg/teleal/common/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/teleal/common/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Lorg/w3c/dom/Node;
    .param p2, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p3, "expr"    # Ljava/lang/String;
    .param p4, "result"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 323
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    :try_start_0
    sget-object v1, Lorg/teleal/common/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluating xpath query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 324
    invoke-interface {p2, p3, p1, p4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isIgnorableWSNode(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 440
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\t\\n\\x0B\\f\\r\\s]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/File;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/io/File;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/File;Z)Lorg/teleal/common/xml/DOM;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t parse null file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/teleal/common/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/common/xml/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing file failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Z)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/teleal/common/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/lang/String;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Z)Lorg/teleal/common/xml/DOM;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t parse null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lorg/teleal/common/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/net/URL;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/teleal/common/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/net/URL;Z)Lorg/teleal/common/xml/DOM;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t parse null URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/teleal/common/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/teleal/common/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/common/xml/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing URL failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Lorg/xml/sax/InputSource;Z)Lorg/teleal/common/xml/DOM;
    .locals 4
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/InputSource;",
            "Z)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/teleal/common/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 248
    .local v2, "parser":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 250
    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 252
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 254
    .local v0, "dom":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 256
    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 258
    .end local v0    # "dom":Lorg/w3c/dom/Document;
    .end local v2    # "parser":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/teleal/common/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/teleal/common/xml/ParserException;

    move-result-object v3

    throw v3
.end method

.method public print(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/teleal/common/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    :try_start_0
    const-string v3, "xml"

    invoke-virtual {p0, v3, p2, p3}, Lorg/teleal/common/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 360
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v3, "encoding"

    const-string v4, "utf-8"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 363
    .local v1, "out":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, p1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 364
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 366
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 368
    .end local v1    # "out":Ljava/io/StringWriter;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v3, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public print(Lorg/teleal/common/xml/DOM;)Ljava/lang/String;
    .locals 2
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/teleal/common/xml/DOMParser;->print(Lorg/teleal/common/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/teleal/common/xml/DOM;I)Ljava/lang/String;
    .locals 1
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/common/xml/DOMParser;->print(Lorg/teleal/common/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/teleal/common/xml/DOM;IZ)Ljava/lang/String;
    .locals 1
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p1}, Lorg/teleal/common/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/teleal/common/xml/DOMParser;->print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/teleal/common/xml/DOM;Z)Ljava/lang/String;
    .locals 1
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .param p2, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lorg/teleal/common/xml/DOMParser;->print(Lorg/teleal/common/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    .line 350
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/teleal/common/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHTML(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p1, "dom"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v1, 0x1

    .line 374
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/teleal/common/xml/DOMParser;->printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;
    .locals 9
    .param p1, "dom"    # Lorg/w3c/dom/Document;
    .param p2, "indent"    # I
    .param p3, "standalone"    # Z
    .param p4, "doctype"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    .end local p1    # "dom":Lorg/w3c/dom/Document;
    check-cast p1, Lorg/w3c/dom/Document;

    .line 386
    .restart local p1    # "dom":Lorg/w3c/dom/Document;
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    new-instance v7, Lorg/teleal/common/xml/DOMParser$2;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8}, Lorg/teleal/common/xml/DOMParser$2;-><init>(Lorg/teleal/common/xml/DOMParser;S)V

    invoke-static {v6, v7}, Lorg/teleal/common/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/teleal/common/xml/DOMParser$NodeVisitor;)V

    .line 394
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/teleal/common/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    .line 397
    :try_start_0
    const-string v6, "html"

    invoke-virtual {p0, v6, p2, p3}, Lorg/teleal/common/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object v4

    .line 399
    .local v4, "transformer":Ljavax/xml/transform/Transformer;
    if-eqz p4, :cond_0

    .line 400
    const-string v6, "doctype-public"

    const-string v7, "-//W3C//DTD HTML 4.01 Transitional//EN"

    invoke-virtual {v4, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v6, "doctype-system"

    const-string v7, "http://www.w3.org/TR/html4/loose.dtd"

    invoke-virtual {v4, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 405
    .local v2, "out":Ljava/io/StringWriter;
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v7, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 406
    invoke-virtual {v2}, Ljava/io/StringWriter;->flush()V

    .line 407
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "output":Ljava/lang/String;
    const-string v1, "\\s*<META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"

    .line 411
    .local v1, "meta":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    const-string v5, "<html xmlns=\"http://www.w3.org/1999/xhtml\">"

    .line 415
    .local v5, "xmlns":Ljava/lang/String;
    const-string v6, "<html>"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 417
    return-object v3

    .line 419
    .end local v1    # "meta":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/StringWriter;
    .end local v3    # "output":Ljava/lang/String;
    .end local v4    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v5    # "xmlns":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v6, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 425
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 427
    .local v1, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 428
    move-object v0, v1

    .line 429
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->isIgnorableWSNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 433
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "child":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 436
    :cond_2
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 477
    .local v0, "is":Lorg/xml/sax/InputSource;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 479
    return-object v0

    .line 475
    .end local v0    # "is":Lorg/xml/sax/InputSource;
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .restart local v0    # "is":Lorg/xml/sax/InputSource;
    goto :goto_0
.end method

.method protected unwrapException(Ljava/lang/Exception;)Lorg/teleal/common/xml/ParserException;
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 460
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/common/xml/ParserException;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xml/ParserException;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v0, p1}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public validate(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t validate null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    sget-object v0, Lorg/teleal/common/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating XML string characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 275
    return-void
.end method

.method public validate(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t validate null URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    sget-object v0, Lorg/teleal/common/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating XML of URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 269
    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;)V
    .locals 3
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/common/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v1

    .line 288
    .local v1, "validator":Ljavax/xml/validation/Validator;
    invoke-virtual {v1, p0}, Ljavax/xml/validation/Validator;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 289
    invoke-virtual {v1, p1}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 290
    .end local v1    # "validator":Ljavax/xml/validation/Validator;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/teleal/common/xml/ParserException;

    move-result-object v2

    throw v2
.end method

.method public validate(Lorg/teleal/common/xml/DOM;)V
    .locals 2
    .param p1, "dom"    # Lorg/teleal/common/xml/DOM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Lorg/teleal/common/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 283
    return-void
.end method

.method public validate(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/teleal/common/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 279
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lorg/teleal/common/xml/DOMParser;, "Lorg/teleal/common/xml/DOMParser<TD;>;"
    sget-object v0, Lorg/teleal/common/xml/DOMParser;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 448
    return-void
.end method
