.class public Lcom/aloys/formuler/airsyncremote/RemoteNumber;
.super Landroid/widget/PopupWindow;
.source "RemoteNumber.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field location:[I

.field public mRemote_number_del:Landroid/widget/Button;

.field public mRemote_number_eight:Landroid/widget/Button;

.field public mRemote_number_f1:Landroid/widget/Button;

.field public mRemote_number_f2:Landroid/widget/Button;

.field public mRemote_number_f3:Landroid/widget/Button;

.field public mRemote_number_f4:Landroid/widget/Button;

.field public mRemote_number_five:Landroid/widget/Button;

.field public mRemote_number_four:Landroid/widget/Button;

.field private mRemote_number_layout:Landroid/widget/LinearLayout;

.field public mRemote_number_nine:Landroid/widget/Button;

.field public mRemote_number_ok:Landroid/widget/Button;

.field public mRemote_number_one:Landroid/widget/Button;

.field public mRemote_number_seven:Landroid/widget/Button;

.field public mRemote_number_six:Landroid/widget/Button;

.field public mRemote_number_stay:Landroid/widget/Button;

.field public mRemote_number_three:Landroid/widget/Button;

.field public mRemote_number_two:Landroid/widget/Button;

.field public mRemote_number_zero:Landroid/widget/Button;

.field private view:Landroid/view/View;

.field x1:I

.field y1:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->location:[I

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_layout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f1:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f2:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f3:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f4:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_one:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_one:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_two:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_two:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_three:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_three:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_four:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_four:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_five:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_five:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_six:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_six:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_seven:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_seven:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_eight:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_eight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_nine:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_nine:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_ok:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_zero:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_zero:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_del:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_del:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_stay:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_stay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setContentView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setWidth(I)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setHeight(I)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setFocusable(Z)V

    .line 179
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setTouchable(Z)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setOutsideTouchable(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->update()V

    .line 182
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->view:Landroid/view/View;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return v2

    .line 215
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f1:Landroid/widget/Button;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 218
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f1:Landroid/widget/Button;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    const/16 v0, 0x7e6

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f2:Landroid/widget/Button;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f2:Landroid/widget/Button;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 230
    const/16 v0, 0x7e7

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f3:Landroid/widget/Button;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f3:Landroid/widget/Button;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    const/16 v0, 0x7e8

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 248
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f4:Landroid/widget/Button;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_f4:Landroid/widget/Button;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    const/16 v0, 0x7e9

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 258
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_one:Landroid/widget/Button;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 260
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_one:Landroid/widget/Button;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 262
    const/16 v0, 0x7d9

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 268
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 269
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_two:Landroid/widget/Button;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 271
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_two:Landroid/widget/Button;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 273
    const/16 v0, 0x7da

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 280
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 281
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_three:Landroid/widget/Button;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 282
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_three:Landroid/widget/Button;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 284
    const/16 v0, 0x7db

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 291
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 292
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_four:Landroid/widget/Button;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 293
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_four:Landroid/widget/Button;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 295
    const/16 v0, 0x7dc

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 302
    :pswitch_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_five:Landroid/widget/Button;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 304
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_five:Landroid/widget/Button;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 306
    const/16 v0, 0x7dd

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 313
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 314
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_six:Landroid/widget/Button;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 315
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_six:Landroid/widget/Button;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 317
    const/16 v0, 0x7de

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 324
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 325
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_seven:Landroid/widget/Button;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 326
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_seven:Landroid/widget/Button;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 328
    const/16 v0, 0x7df

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 335
    :pswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 336
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_eight:Landroid/widget/Button;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 337
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 338
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_eight:Landroid/widget/Button;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 339
    const/16 v0, 0x7e0

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 346
    :pswitch_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 347
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_nine:Landroid/widget/Button;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 348
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_nine:Landroid/widget/Button;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 350
    const/16 v0, 0x7e1

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 357
    :pswitch_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 358
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_ok:Landroid/widget/Button;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 359
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 360
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_ok:Landroid/widget/Button;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 362
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->dismiss()V

    goto/16 :goto_0

    .line 369
    :pswitch_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 370
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_zero:Landroid/widget/Button;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 371
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_zero:Landroid/widget/Button;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 373
    const/16 v0, 0x7e3

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    .line 381
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_del:Landroid/widget/Button;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 382
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 383
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_del:Landroid/widget/Button;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 384
    const/16 v0, 0x7e4

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 391
    :pswitch_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 392
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_stay:Landroid/widget/Button;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 393
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->mRemote_number_stay:Landroid/widget/Button;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 397
    const/16 v0, 0x270f

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b009c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
