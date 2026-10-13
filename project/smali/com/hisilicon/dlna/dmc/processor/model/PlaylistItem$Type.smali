.class public final enum Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
.super Ljava/lang/Enum;
.source "PlaylistItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum AUDIO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field public static final enum VIDEO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "VIDEO_LOCAL"

    invoke-direct {v0, v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "AUDIO_LOCAL"

    invoke-direct {v0, v1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "IMAGE_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "AUDIO_REMOTE"

    invoke-direct {v0, v1, v6}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "VIDEO_REMOTE"

    invoke-direct {v0, v1, v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "IMAGE_REMOTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    const-string v1, "UNKNOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v0}, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    return-object v0
.end method
