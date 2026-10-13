.class public Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;
.super Ljava/lang/Object;
.source "VImeTextInfo.java"


# static fields
.field public static final INPUT_CURSOR:Ljava/lang/String; = "cursor"

.field public static final INPUT_OPTION:Ljava/lang/String; = "imeOptions"

.field public static final INPUT_TEXT:Ljava/lang/String; = "text"

.field public static final INPUT_TYPE:Ljava/lang/String; = "inputType"

.field public static final REAL_END_SELECTION:Ljava/lang/String; = "realEndSelection"

.field public static final REAL_START_SELECTION:Ljava/lang/String; = "realStartSelection"

.field public static final REAL_TEXT:Ljava/lang/String; = "realText "

.field public static final SRC_END_SELECTION:Ljava/lang/String; = "srcEndSelection"

.field public static final SRC_START_SELECTION:Ljava/lang/String; = "srcStartSelection"

.field public static final SRC_TEXT:Ljava/lang/String; = "srcText"

.field public static final TEXT_SEQUENCE:Ljava/lang/String; = "sequence"


# instance fields
.field private mImeOption:I

.field private mInputType:I

.field private mRealEndSelection:I

.field private mRealStartSelection:I

.field private mRealText:Ljava/lang/String;

.field private mSrcEndSelection:I

.field private mSrcStartSelection:I

.field private mSrcText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 33
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 41
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 43
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 45
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 54
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "imeOption"    # I
    .param p3, "realText"    # Ljava/lang/String;
    .param p4, "realStartSelection"    # I
    .param p5, "realEndSelection"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 33
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 41
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 43
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 45
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 72
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 73
    iput p2, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 74
    iput-object p3, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 75
    iput p4, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 76
    iput p5, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "realText"    # Ljava/lang/String;
    .param p2, "realStartSelection"    # I
    .param p3, "realEndSelection"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 33
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 41
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 43
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 45
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 90
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 92
    iput p3, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 2
    .param p1, "srcText"    # Ljava/lang/String;
    .param p2, "srcStartSelection"    # I
    .param p3, "srcEndSelection"    # I
    .param p4, "realText"    # Ljava/lang/String;
    .param p5, "realStartSelection"    # I
    .param p6, "realEndSelection"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 33
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 41
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 43
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 45
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 117
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 119
    iput p3, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 120
    iput-object p4, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 121
    iput p5, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 122
    iput p6, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 123
    return-void
.end method


# virtual methods
.method public getImeOption()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    return v0
.end method

.method public getRealEndSelection()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    return v0
.end method

.method public getRealStartSelection()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    return v0
.end method

.method public getRealText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcEndSelection()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    return v0
.end method

.method public getSrcStartSelection()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    return v0
.end method

.method public getSrcText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    return-object v0
.end method

.method public setImeOption(I)V
    .locals 0
    .param p1, "imeOption"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mImeOption:I

    .line 167
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mInputType:I

    .line 145
    return-void
.end method

.method public setRealEndSelection(I)V
    .locals 0
    .param p1, "realEndSelection"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealEndSelection:I

    .line 298
    return-void
.end method

.method public setRealStartSelection(I)V
    .locals 0
    .param p1, "realStartSelection"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealStartSelection:I

    .line 276
    return-void
.end method

.method public setRealText(Ljava/lang/String;)V
    .locals 0
    .param p1, "realText"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mRealText:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setSrcEndSelection(I)V
    .locals 0
    .param p1, "srcEndSelection"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcEndSelection:I

    .line 233
    return-void
.end method

.method public setSrcStartSelection(I)V
    .locals 0
    .param p1, "srcStartCursor"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcStartSelection:I

    .line 211
    return-void
.end method

.method public setSrcText(Ljava/lang/String;)V
    .locals 0
    .param p1, "srcText"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/VImeTextInfo;->mSrcText:Ljava/lang/String;

    .line 189
    return-void
.end method
