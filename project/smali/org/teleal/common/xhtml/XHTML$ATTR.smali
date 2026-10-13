.class public final enum Lorg/teleal/common/xhtml/XHTML$ATTR;
.super Ljava/lang/Enum;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xhtml/XHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/common/xhtml/XHTML$ATTR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final enum action:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum alt:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum colspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum content:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum href:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum id:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum method:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum name:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum rel:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum rev:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum rowspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum scheme:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum src:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum style:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum title:Lorg/teleal/common/xhtml/XHTML$ATTR;

.field public static final enum type:Lorg/teleal/common/xhtml/XHTML$ATTR;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "id"

    invoke-direct {v0, v1, v3}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->id:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "style"

    invoke-direct {v0, v1, v4}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->style:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "title"

    invoke-direct {v0, v1, v5}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->title:Lorg/teleal/common/xhtml/XHTML$ATTR;

    .line 54
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "type"

    invoke-direct {v0, v1, v6}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->type:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "href"

    invoke-direct {v0, v1, v7}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "name"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->name:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "content"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->content:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "scheme"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->scheme:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "rel"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->rel:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "rev"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->rev:Lorg/teleal/common/xhtml/XHTML$ATTR;

    .line 55
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "colspan"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->colspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "rowspan"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->rowspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "src"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->src:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "alt"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->alt:Lorg/teleal/common/xhtml/XHTML$ATTR;

    .line 56
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "action"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->action:Lorg/teleal/common/xhtml/XHTML$ATTR;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    const-string v1, "method"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->method:Lorg/teleal/common/xhtml/XHTML$ATTR;

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/teleal/common/xhtml/XHTML$ATTR;

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->id:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->style:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->title:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->type:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ATTR;->href:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->name:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->content:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->scheme:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->rel:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->rev:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->colspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->rowspan:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->src:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->alt:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->action:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->method:Lorg/teleal/common/xhtml/XHTML$ATTR;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->$VALUES:[Lorg/teleal/common/xhtml/XHTML$ATTR;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTML$ATTR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/XHTML$ATTR;

    return-object v0
.end method

.method public static values()[Lorg/teleal/common/xhtml/XHTML$ATTR;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ATTR;->$VALUES:[Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {v0}, [Lorg/teleal/common/xhtml/XHTML$ATTR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTML$ATTR;

    return-object v0
.end method
