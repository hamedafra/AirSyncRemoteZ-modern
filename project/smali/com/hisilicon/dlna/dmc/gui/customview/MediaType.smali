.class public final enum Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field public static final enum IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field public static final enum LIVETV:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field public static final enum MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field public static final enum UNKNOW:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field public static final enum VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v4, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    const-string v1, "LIVETV"

    invoke-direct {v0, v1, v5, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->LIVETV:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v6, v6}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->UNKNOW:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->LIVETV:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->UNKNOW:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->$VALUES:[Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->index:I

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->$VALUES:[Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v0}, [Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->index:I

    return v0
.end method
