.class public final enum Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;
.super Ljava/lang/Enum;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

.field public static final enum AUDIO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

.field public static final enum GSENSOR_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

.field public static final enum VIDEO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

.field public static final enum VIME_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    const-string v1, "VIME_SWITCH"

    invoke-direct {v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIME_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    const-string v1, "GSENSOR_SWITCH"

    invoke-direct {v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->GSENSOR_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    const-string v1, "VIDEO_SWITCH"

    invoke-direct {v0, v1, v4}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIDEO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    const-string v1, "AUDIO_SWITCH"

    invoke-direct {v0, v1, v5}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->AUDIO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIME_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->GSENSOR_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIDEO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->AUDIO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->$VALUES:[Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    return-object v0
.end method

.method public static values()[Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->$VALUES:[Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    invoke-virtual {v0}, [Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    return-object v0
.end method
