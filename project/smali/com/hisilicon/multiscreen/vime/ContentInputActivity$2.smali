.class Lcom/hisilicon/multiscreen/vime/ContentInputActivity$2;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$2;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$2;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    sget-object v1, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;->BUTTON_COMPLETE:Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity;->access$002(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;)Lcom/hisilicon/multiscreen/vime/ContentInputActivity$EndInputType;

    .line 187
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$2;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity;->finish()V

    .line 188
    return-void
.end method
