.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$3;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$300()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$300()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisonnectText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_disconnected:Landroid/widget/ImageView;

    const v1, 0x7f02001b

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    :cond_0
    return-void
.end method
