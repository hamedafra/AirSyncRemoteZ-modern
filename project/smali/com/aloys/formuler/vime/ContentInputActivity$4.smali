.class Lcom/aloys/formuler/vime/ContentInputActivity$4;
.super Ljava/util/TimerTask;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/vime/ContentInputActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/vime/ContentInputActivity;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$4;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$4;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    const-string v2, "input_method"

    .line 478
    invoke-virtual {v1, v2}, Lcom/aloys/formuler/vime/ContentInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 479
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$4;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-static {v1}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$300(Lcom/aloys/formuler/vime/ContentInputActivity;)Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 480
    return-void
.end method
