.class public Lorg/teleal/cling/model/meta/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final data:[B

.field private final depth:I

.field private device:Lorg/teleal/cling/model/meta/Device;

.field private final height:I

.field private final mimeType:Lorg/teleal/common/util/MimeType;

.field private final uri:Ljava/net/URI;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/io/File;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-static {p5}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/File;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/net/URI;

    .prologue
    .line 63
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/net/URI;
    .param p6, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p6}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;Ljava/lang/String;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/net/URI;
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    .line 69
    if-eqz p6, :cond_0

    const-string v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/teleal/cling/model/types/BinHexDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/BinHexDatatype;-><init>()V

    invoke-virtual {v0, p6}, Lorg/teleal/cling/model/types/BinHexDatatype;->valueOf(Ljava/lang/String;)[Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/util/ByteArray;->toPrimitive([Ljava/lang/Byte;)[B

    move-result-object v6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    .line 71
    return-void

    .line 69
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URI;[B)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/net/URI;
    .param p6, "data"    # [B

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v1

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/net/URL;)V
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v5, Ljava/io/File;

    invoke-static {p5}, Lorg/teleal/common/util/URIUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/io/File;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V
    .locals 0
    .param p1, "mimeType"    # Lorg/teleal/common/util/MimeType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "depth"    # I
    .param p5, "uri"    # Ljava/net/URI;
    .param p6, "data"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Icon;->mimeType:Lorg/teleal/common/util/MimeType;

    .line 91
    iput p2, p0, Lorg/teleal/cling/model/meta/Icon;->width:I

    .line 92
    iput p3, p0, Lorg/teleal/cling/model/meta/Icon;->height:I

    .line 93
    iput p4, p0, Lorg/teleal/cling/model/meta/Icon;->depth:I

    .line 94
    iput-object p5, p0, Lorg/teleal/cling/model/meta/Icon;->uri:Ljava/net/URI;

    .line 95
    iput-object p6, p0, Lorg/teleal/cling/model/meta/Icon;->data:[B

    .line 96
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/teleal/cling/model/meta/Icon;
    .locals 7

    .prologue
    .line 177
    new-instance v0, Lorg/teleal/cling/model/meta/Icon;

    .line 178
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getWidth()I

    move-result v2

    .line 180
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getHeight()I

    move-result v3

    .line 181
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDepth()I

    move-result v4

    .line 182
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    .line 183
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getData()[B

    move-result-object v6

    .line 177
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Icon;->data:[B

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/teleal/cling/model/meta/Icon;->depth:I

    return v0
.end method

.method public getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Icon;->device:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/teleal/cling/model/meta/Icon;->height:I

    return v0
.end method

.method public getMimeType()Lorg/teleal/common/util/MimeType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Icon;->mimeType:Lorg/teleal/common/util/MimeType;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Icon;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/teleal/cling/model/meta/Icon;->width:I

    return v0
.end method

.method setDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Icon;->device:Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Icon;->device:Lorg/teleal/cling/model/meta/Device;

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v3

    if-nez v3, :cond_0

    .line 136
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP specification violation of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 137
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid icon, missing mime type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    .line 140
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP specification violation of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 141
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid icon, missing width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getHeight()I

    move-result v3

    if-nez v3, :cond_2

    .line 144
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP specification violation of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 145
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid icon, missing height: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 147
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDepth()I

    move-result v3

    if-nez v3, :cond_3

    .line 148
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPnP specification violation of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 149
    sget-object v3, Lorg/teleal/cling/model/meta/Icon;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid icon, missing bitmap depth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v3

    if-nez v3, :cond_4

    .line 153
    new-instance v3, Lorg/teleal/cling/model/ValidationError;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 155
    const-string v5, "uri"

    .line 156
    const-string v6, "URL is required"

    invoke-direct {v3, v4, v5, v6}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 161
    .local v2, "testURI":Ljava/net/URL;
    if-nez v2, :cond_5

    .line 162
    new-instance v3, Ljava/net/MalformedURLException;

    invoke-direct {v3}, Ljava/net/MalformedURLException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v2    # "testURI":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lorg/teleal/cling/model/ValidationError;

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 166
    const-string v5, "uri"

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "URL must be valid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    :cond_5
    :goto_0
    return-object v0

    .line 169
    :catch_1
    move-exception v3

    goto :goto_0
.end method
