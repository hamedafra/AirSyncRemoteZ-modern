.class public Lcom/hisilicon/multiscreen/protocol/utils/SpecialCharUtil;
.super Ljava/lang/Object;
.source "SpecialCharUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inputText"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "outPutText":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 28
    :cond_0
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 31
    goto :goto_0
.end method
