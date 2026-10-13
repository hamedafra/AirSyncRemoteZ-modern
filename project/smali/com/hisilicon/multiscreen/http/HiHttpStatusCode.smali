.class public Lcom/hisilicon/multiscreen/http/HiHttpStatusCode;
.super Ljava/lang/Object;
.source "HiHttpStatusCode.java"


# static fields
.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 39
    sparse-switch p0, :sswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 43
    :sswitch_0
    const-string v0, "OK"

    goto :goto_0

    .line 46
    :sswitch_1
    const-string v0, "Not Found"

    goto :goto_0

    .line 49
    :sswitch_2
    const-string v0, "Internal Server Error"

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method
