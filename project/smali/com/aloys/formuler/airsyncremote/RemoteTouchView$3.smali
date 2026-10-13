.class Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;
.super Ljava/lang/Object;
.source "RemoteTouchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$800(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 428
    return-void
.end method
