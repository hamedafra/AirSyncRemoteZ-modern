.class final Lorg/teleal/common/xml/CatalogResourceResolver$Input;
.super Ljava/lang/Object;
.source "CatalogResourceResolver.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xml/CatalogResourceResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Input"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/teleal/common/xml/CatalogResourceResolver$Input;->in:Ljava/io/InputStream;

    .line 80
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/teleal/common/xml/CatalogResourceResolver$Input;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCertifiedText()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "byteStream"    # Ljava/io/InputStream;

    .prologue
    .line 94
    return-void
.end method

.method public setCertifiedText(Z)V
    .locals 0
    .param p1, "certifiedText"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0
    .param p1, "characterStream"    # Ljava/io/Reader;

    .prologue
    .line 87
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringData"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 108
    return-void
.end method
