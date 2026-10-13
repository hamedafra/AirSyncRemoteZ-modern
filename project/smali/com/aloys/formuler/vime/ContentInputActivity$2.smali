.class Lcom/aloys/formuler/vime/ContentInputActivity$2;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;
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
    .line 187
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$2;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity$2;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    sget-object v1, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->BUTTON_COMPLETE:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-static {v0, v1}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$002(Lcom/aloys/formuler/vime/ContentInputActivity;Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .line 191
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity$2;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->finish()V

    .line 192
    return-void
.end method
