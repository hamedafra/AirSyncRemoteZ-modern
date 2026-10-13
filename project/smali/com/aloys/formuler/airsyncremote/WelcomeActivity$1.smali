.class Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->access$000(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V

    .line 62
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->access$100(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V

    .line 63
    return-void
.end method
