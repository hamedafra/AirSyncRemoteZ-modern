.class public final enum Lorg/teleal/common/xhtml/XHTML$ELEMENT;
.super Ljava/lang/Enum;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xhtml/XHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/common/xhtml/XHTML$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum a:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum body:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum dd:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum div:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum dl:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum dt:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum form:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h1:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h2:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h3:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h4:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h5:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum h6:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum head:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum html:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum img:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum input:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum li:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum link:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum meta:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum object:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum ol:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum option:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum p:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum pre:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum script:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum select:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum span:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum style:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum table:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum tbody:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum td:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum tfoot:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum th:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum thead:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum title:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum tr:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

.field public static final enum ul:Lorg/teleal/common/xhtml/XHTML$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "html"

    invoke-direct {v0, v1, v3}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->html:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "head"

    invoke-direct {v0, v1, v4}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->head:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "title"

    invoke-direct {v0, v1, v5}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->title:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "meta"

    invoke-direct {v0, v1, v6}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->meta:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "link"

    invoke-direct {v0, v1, v7}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->link:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "script"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->script:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "style"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->style:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 45
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "body"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->body:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "div"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->div:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "span"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->span:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "p"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->p:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "object"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->object:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "a"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->a:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "img"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->img:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "pre"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->pre:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 46
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h1"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h1:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h2:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h3"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h3:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h4"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h4:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h5"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h5:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "h6"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h6:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 47
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "table"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->table:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "thead"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->thead:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "tfoot"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tfoot:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "tbody"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tbody:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "tr"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tr:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "th"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->th:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "td"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->td:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 48
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "ul"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->ul:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "ol"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->ol:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "li"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->li:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "dl"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dl:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "dt"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dt:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "dd"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dd:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 49
    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "form"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->form:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "input"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->input:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "select"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->select:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    const-string v1, "option"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->option:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    .line 43
    const/16 v0, 0x26

    new-array v0, v0, [Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->html:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->head:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->title:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->meta:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->link:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->script:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->style:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->body:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->div:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->span:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->p:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->object:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->a:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->img:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->pre:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h1:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h2:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h3:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h4:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h5:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->h6:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->table:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->thead:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tfoot:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tbody:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->tr:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->th:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->td:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->ul:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->ol:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->li:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dl:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dt:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->dd:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->form:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->input:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->select:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->option:Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/teleal/common/xhtml/XHTML$ELEMENT;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/common/xhtml/XHTML$ELEMENT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    return-object v0
.end method

.method public static values()[Lorg/teleal/common/xhtml/XHTML$ELEMENT;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/teleal/common/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    invoke-virtual {v0}, [Lorg/teleal/common/xhtml/XHTML$ELEMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/xhtml/XHTML$ELEMENT;

    return-object v0
.end method
