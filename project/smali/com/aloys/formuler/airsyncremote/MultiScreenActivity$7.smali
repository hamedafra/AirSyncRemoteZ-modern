.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$7;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    .line 841
    return-void
.end method
