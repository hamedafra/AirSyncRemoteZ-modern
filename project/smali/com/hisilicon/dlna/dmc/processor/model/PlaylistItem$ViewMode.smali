.class public final enum Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;
.super Ljava/lang/Enum;
.source "PlaylistItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

.field public static final enum ALL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

.field public static final enum AUDIO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

.field public static final enum IMAGE_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

.field public static final enum VIDEO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;


# instance fields
.field compactString:Ljava/lang/String;

.field viewMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    const-string v1, "ALL"

    const-string v2, "All items"

    const-string v3, "All"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->ALL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    const-string v1, "AUDIO_ONLY"

    const-string v2, "Audio only"

    const-string v3, "Audio"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->AUDIO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    const-string v1, "VIDEO_ONLY"

    const-string v2, "Video only"

    const-string v3, "Video"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->VIDEO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    const-string v1, "IMAGE_ONLY"

    const-string v2, "Image only"

    const-string v3, "Image"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->IMAGE_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->ALL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->AUDIO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->VIDEO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->IMAGE_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "viewMode"    # Ljava/lang/String;
    .param p4, "compactString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->viewMode:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->viewMode:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->compactString:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->$VALUES:[Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-virtual {v0}, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    return-object v0
.end method


# virtual methods
.method public compatibleWith(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)Z
    .locals 2
    .param p1, "type"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .prologue
    .line 186
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->ALL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    .line 188
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$1;->$SwitchMap$com$hisilicon$dlna$dmc$processor$model$PlaylistItem$Type:[I

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :pswitch_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->AUDIO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 194
    :pswitch_1
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->VIDEO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 197
    :pswitch_2
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->IMAGE_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCompactString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->compactString:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->viewMode:Ljava/lang/String;

    return-object v0
.end method
