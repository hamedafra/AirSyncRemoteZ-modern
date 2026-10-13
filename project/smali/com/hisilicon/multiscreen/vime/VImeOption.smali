.class public final enum Lcom/hisilicon/multiscreen/vime/VImeOption;
.super Ljava/lang/Enum;
.source "VImeOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/multiscreen/vime/VImeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_DONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_GO:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_NEXT:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_NONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_SEARCH:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_SEND:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum ACTION_UNSPECIFIED:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum FLAG_NO_ACCESSORY_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum FLAG_NO_ENTER_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field public static final enum HIDE_KEYBOARD:Lcom/hisilicon/multiscreen/vime/VImeOption;


# instance fields
.field private final mOptionIndex:I

.field private final mOptionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_DONE"

    const-string v2, "DONE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_DONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 13
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_GO"

    const-string v2, "GO"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_GO:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 14
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_NEXT"

    const-string v2, "NEXT"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_NEXT:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 15
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_NONE"

    const-string v2, "EndInput"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_NONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 16
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_SEARCH"

    const-string v2, "SEARCH"

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_SEARCH:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 17
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_SEND"

    const/4 v2, 0x5

    const-string v3, "SEND"

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_SEND:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 18
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "ACTION_UNSPECIFIED"

    const/4 v2, 0x6

    const-string v3, "UNSPECIFIED"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_UNSPECIFIED:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 19
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "FLAG_NO_ACCESSORY_ACTION"

    const/4 v2, 0x7

    const-string v3, "EndInput"

    const/high16 v4, 0x20000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->FLAG_NO_ACCESSORY_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 20
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "FLAG_NO_ENTER_ACTION"

    const/16 v2, 0x8

    const-string v3, "EndInput"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->FLAG_NO_ENTER_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 21
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    const-string v1, "HIDE_KEYBOARD"

    const/16 v2, 0x9

    const-string v3, "FinishKeyboard"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/vime/VImeOption;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->HIDE_KEYBOARD:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/hisilicon/multiscreen/vime/VImeOption;

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_DONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_GO:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_NEXT:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_NONE:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_SEARCH:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_SEND:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hisilicon/multiscreen/vime/VImeOption;->ACTION_UNSPECIFIED:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hisilicon/multiscreen/vime/VImeOption;->FLAG_NO_ACCESSORY_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hisilicon/multiscreen/vime/VImeOption;->FLAG_NO_ENTER_ACTION:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hisilicon/multiscreen/vime/VImeOption;->HIDE_KEYBOARD:Lcom/hisilicon/multiscreen/vime/VImeOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->$VALUES:[Lcom/hisilicon/multiscreen/vime/VImeOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/hisilicon/multiscreen/vime/VImeOption;->mOptionName:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/hisilicon/multiscreen/vime/VImeOption;->mOptionIndex:I

    .line 31
    return-void
.end method

.method public static getOption(I)Lcom/hisilicon/multiscreen/vime/VImeOption;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/VImeOption;->values()[Lcom/hisilicon/multiscreen/vime/VImeOption;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 37
    .local v0, "option":Lcom/hisilicon/multiscreen/vime/VImeOption;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/vime/VImeOption;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 42
    .end local v0    # "option":Lcom/hisilicon/multiscreen/vime/VImeOption;
    :goto_1
    return-object v0

    .line 35
    .restart local v0    # "option":Lcom/hisilicon/multiscreen/vime/VImeOption;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "option":Lcom/hisilicon/multiscreen/vime/VImeOption;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/multiscreen/vime/VImeOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/vime/VImeOption;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/multiscreen/vime/VImeOption;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/hisilicon/multiscreen/vime/VImeOption;->$VALUES:[Lcom/hisilicon/multiscreen/vime/VImeOption;

    invoke-virtual {v0}, [Lcom/hisilicon/multiscreen/vime/VImeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/multiscreen/vime/VImeOption;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/hisilicon/multiscreen/vime/VImeOption;->mOptionIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeOption;->mOptionName:Ljava/lang/String;

    return-object v0
.end method
