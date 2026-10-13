.class final Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/PopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field groupItem:Landroid/widget/TextView;

.field llItem:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/PopAdapter;


# direct methods
.method private constructor <init>(Lcom/aloys/formuler/airsyncremote/PopAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->this$0:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aloys/formuler/airsyncremote/PopAdapter;Lcom/aloys/formuler/airsyncremote/PopAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aloys/formuler/airsyncremote/PopAdapter;
    .param p2, "x1"    # Lcom/aloys/formuler/airsyncremote/PopAdapter$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;-><init>(Lcom/aloys/formuler/airsyncremote/PopAdapter;)V

    return-void
.end method
