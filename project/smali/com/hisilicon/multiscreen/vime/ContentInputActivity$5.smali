.class synthetic Lcom/hisilicon/multiscreen/vime/ContentInputActivity$5;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hisilicon$multiscreen$vime$ContentInputActivity$EndInputType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->values()[Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$5;->$SwitchMap$com$hisilicon$multiscreen$vime$ContentInputActivity$EndInputType:[I

    :try_start_0
    sget-object v0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$5;->$SwitchMap$com$hisilicon$multiscreen$vime$ContentInputActivity$EndInputType:[I

    sget-object v1, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->BUTTON_COMPLETE:Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$5;->$SwitchMap$com$hisilicon$multiscreen$vime$ContentInputActivity$EndInputType:[I

    sget-object v1, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->STB:Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$5;->$SwitchMap$com$hisilicon$multiscreen$vime$ContentInputActivity$EndInputType:[I

    sget-object v1, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->OTHERS:Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
