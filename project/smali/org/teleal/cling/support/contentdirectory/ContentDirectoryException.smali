.class public Lorg/teleal/cling/support/contentdirectory/ContentDirectoryException;
.super Lorg/teleal/cling/model/action/ActionException;
.source "ContentDirectoryException.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lorg/teleal/cling/model/types/ErrorCode;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Lorg/teleal/cling/model/types/ErrorCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    .line 47
    return-void
.end method
