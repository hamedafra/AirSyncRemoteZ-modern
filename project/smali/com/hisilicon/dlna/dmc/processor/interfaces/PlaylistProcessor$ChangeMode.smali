.class public final enum Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;
.super Ljava/lang/Enum;
.source "PlaylistProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

.field public static final enum NEXT:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

.field public static final enum PREV:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

.field public static final enum RANDOM:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

.field public static final enum UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->NEXT:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->PREV:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    const-string v1, "RANDOM"

    invoke-direct {v0, v1, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->RANDOM:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->NEXT:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->PREV:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->RANDOM:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-virtual {v0}, [Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    return-object v0
.end method
