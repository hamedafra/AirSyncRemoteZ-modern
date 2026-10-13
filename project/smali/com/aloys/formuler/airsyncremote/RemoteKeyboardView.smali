.class public Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;
.super Landroid/widget/RelativeLayout;
.source "RemoteKeyboardView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mRemote_keyboard_btn:Landroid/widget/Button;

.field public mRemote_keyboard_down:Landroid/widget/Button;

.field public mRemote_keyboard_layout:Landroid/widget/RelativeLayout;

.field public mRemote_keyboard_left:Landroid/widget/Button;

.field public mRemote_keyboard_ok:Landroid/widget/Button;

.field public mRemote_keyboard_right:Landroid/widget/Button;

.field public mRemote_keyboard_up:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->initViews(Landroid/content/Context;)V

    .line 60
    return-void
.end method


# virtual methods
.method public initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030028

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_ok:Landroid/widget/Button;

    .line 71
    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_up:Landroid/widget/Button;

    .line 72
    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_left:Landroid/widget/Button;

    .line 73
    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_right:Landroid/widget/Button;

    .line 74
    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_down:Landroid/widget/Button;

    .line 75
    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_layout:Landroid/widget/RelativeLayout;

    .line 76
    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    .line 78
    return-void
.end method
