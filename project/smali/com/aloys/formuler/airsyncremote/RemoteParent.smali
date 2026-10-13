.class public Lcom/aloys/formuler/airsyncremote/RemoteParent;
.super Landroid/widget/PopupWindow;
.source "RemoteParent.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field location:[I

.field private mRemote_parent_game_name:Landroid/widget/TextView;

.field public mRemote_parent_games:Landroid/widget/Button;

.field private mRemote_parent_keyboard_name:Landroid/widget/TextView;

.field public mRemote_parent_keyboards:Landroid/widget/Button;

.field private mRemote_parent_touch_layout:Landroid/widget/LinearLayout;

.field private mRemote_parent_touch_name:Landroid/widget/TextView;

.field public mRemote_parent_touchs:Landroid/widget/Button;

.field private parent:Landroid/view/View;

.field x1:I

.field y1:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->location:[I

    .line 67
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00ad

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_layout:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touchs:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touchs:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboards:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboards:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_games:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_games:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_name:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00b1

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboard_name:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_game_name:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setWidth(I)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setHeight(I)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setTouchable(Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->setOutsideTouchable(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->update()V

    .line 95
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->parent:Landroid/view/View;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteParent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/RemoteParent;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteParent;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public updateBackground(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const v1, 0x7f020120

    const v5, 0x7f0200e5

    const v4, 0x7f0200cd

    const v3, 0x7f090013

    const v2, 0x7f090016

    .line 123
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touchs:Landroid/widget/Button;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboards:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_games:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboard_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_game_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touchs:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboards:Landroid/widget/Button;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_games:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboard_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_game_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touchs:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboards:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_games:Landroid/widget/Button;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 153
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_touch_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_keyboard_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->mRemote_parent_game_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
