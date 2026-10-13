.class public Lorg/teleal/cling/model/message/header/ContentTypeHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "ContentTypeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/common/util/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

.field public static final DEFAULT_CONTENT_TYPE_UTF8:Lorg/teleal/common/util/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "text/xml"

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    .line 28
    const-string v0, "text/xml;charset=\"utf-8\""

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/teleal/common/util/MimeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 31
    sget-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->setString(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;)V
    .locals 0
    .param p1, "contentType"    # Lorg/teleal/common/util/MimeType;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/util/MimeType;

    invoke-virtual {v0}, Lorg/teleal/common/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isText()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/util/MimeType;

    invoke-virtual {v0}, Lorg/teleal/common/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    invoke-virtual {v1}, Lorg/teleal/common/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDACompliantXML()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/util/MimeType;

    invoke-virtual {v0}, Lorg/teleal/common/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    invoke-virtual {v1}, Lorg/teleal/common/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
