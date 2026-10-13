.class public Lorg/teleal/common/xml/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/xml/SAXParser$Handler;,
        Lorg/teleal/common/xml/SAXParser$SimpleErrorHandler;
    }
.end annotation


# static fields
.field public static final XML_SCHEMA_NAMESPACE:Ljava/net/URI;

.field public static final XML_SCHEMA_RESOURCE:Ljava/net/URL;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lorg/teleal/common/xml/SAXParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/SAXParser;->log:Ljava/util/logging/Logger;

    .line 47
    const-string v0, "http://www.w3.org/2001/xml.xsd"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/SAXParser;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/teleal/common/schemas/xml.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/xml/SAXParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/common/xml/SAXParser;-><init>(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/teleal/common/xml/SAXParser;->create()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/teleal/common/xml/SAXParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected create()Lorg/xml/sax/XMLReader;
    .locals 4

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/common/xml/SAXParser;->getSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 73
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/teleal/common/xml/SAXParser;->getSchemaSources()[Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/teleal/common/xml/SAXParser;->createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 75
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 76
    .local v2, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-virtual {p0}, Lorg/teleal/common/xml/SAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 79
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "xmlReader":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 4
    .param p1, "schemaSources"    # [Ljavax/xml/transform/Source;

    .prologue
    .line 87
    :try_start_0
    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v2}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 88
    .local v1, "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    new-instance v2, Lorg/teleal/common/xml/CatalogResourceResolver;

    new-instance v3, Lorg/teleal/common/xml/SAXParser$1;

    invoke-direct {v3, p0}, Lorg/teleal/common/xml/SAXParser$1;-><init>(Lorg/teleal/common/xml/SAXParser;)V

    invoke-direct {v2, v3}, Lorg/teleal/common/xml/CatalogResourceResolver;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljavax/xml/validation/SchemaFactory;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    .line 93
    invoke-virtual {v1, p1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 94
    .end local v1    # "schemaFactory":Ljavax/xml/validation/SchemaFactory;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lorg/teleal/common/xml/SAXParser$SimpleErrorHandler;

    invoke-direct {v0, p0}, Lorg/teleal/common/xml/SAXParser$SimpleErrorHandler;-><init>(Lorg/teleal/common/xml/SAXParser;)V

    return-object v0
.end method

.method protected getSchemaSources()[Ljavax/xml/transform/Source;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/common/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/common/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/teleal/common/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 66
    return-void
.end method
