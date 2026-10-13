.class Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;
.super Ljava/lang/Object;
.source "Picture_New_View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoldersClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method
