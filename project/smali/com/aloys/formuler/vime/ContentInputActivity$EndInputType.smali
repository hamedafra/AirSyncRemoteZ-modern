.class final enum Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;
.super Ljava/lang/Enum;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EndInputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

.field public static final enum BUTTON_COMPLETE:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

.field public static final enum OTHERS:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

.field public static final enum STB:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    const-string v1, "BUTTON_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->BUTTON_COMPLETE:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    const-string v1, "STB"

    invoke-direct {v0, v1, v3}, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->STB:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->OTHERS:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    sget-object v1, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->BUTTON_COMPLETE:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->STB:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->OTHERS:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->$VALUES:[Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    return-object v0
.end method

.method public static values()[Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->$VALUES:[Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-virtual {v0}, [Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    return-object v0
.end method
