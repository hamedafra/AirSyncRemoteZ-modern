.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$12;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateKeyboardView()V
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
    .line 1509
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1700(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1514
    return-void
.end method
