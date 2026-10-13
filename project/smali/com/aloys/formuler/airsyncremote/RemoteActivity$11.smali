.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$11;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
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
    .line 1382
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$11;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$11;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1600(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 1387
    return-void
.end method
