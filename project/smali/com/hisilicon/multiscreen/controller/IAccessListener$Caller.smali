.class public final enum Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
.super Ljava/lang/Enum;
.source "IAccessListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/controller/IAccessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Caller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

.field public static final enum AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

.field public static final enum KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

.field public static final enum Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

.field public static final enum ReAccess:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const-string v1, "AccessPing"

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    new-instance v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const-string v1, "ReAccess"

    invoke-direct {v0, v1, v3}, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->ReAccess:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    new-instance v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const-string v1, "KeepAlive"

    invoke-direct {v0, v1, v4}, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    new-instance v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const-string v1, "Others"

    invoke-direct {v0, v1, v5}, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->ReAccess:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->$VALUES:[Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->$VALUES:[Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-virtual {v0}, [Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    return-object v0
.end method
