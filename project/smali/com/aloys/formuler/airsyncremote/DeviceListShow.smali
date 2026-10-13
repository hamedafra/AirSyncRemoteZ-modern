.class public Lcom/aloys/formuler/airsyncremote/DeviceListShow;
.super Landroid/widget/PopupWindow;
.source "DeviceListShow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;
    }
.end annotation


# static fields
.field public static listView:Landroid/widget/ListView;


# instance fields
.field private adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

.field private clickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

.field location:[I

.field private mContext:Landroid/app/Activity;

.field private mDevice_cancel:Landroid/widget/Button;

.field private mDevice_list_layout:Landroid/widget/LinearLayout;

.field x1:I

.field y1:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "newClickCallback"    # Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->location:[I

    .line 58
    iput-object p2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->clickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    .line 59
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mContext:Landroid/app/Activity;

    .line 61
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mDevice_list_layout:Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mDevice_cancel:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mDevice_cancel:Landroid/widget/Button;

    new-instance v2, Lcom/aloys/formuler/airsyncremote/DeviceListShow$1;

    invoke-direct {v2, p0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow$1;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setWidth(I)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setHeight(I)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setFocusable(Z)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setTouchable(Z)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setOutsideTouchable(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->update()V

    .line 82
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    .line 85
    new-instance v1, Lcom/aloys/formuler/airsyncremote/PopAdapter;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/aloys/formuler/airsyncremote/PopAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    .line 86
    sget-object v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    sget-object v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 92
    sget-object v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;

    invoke-direct {v2, p0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    new-instance v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Lcom/aloys/formuler/airsyncremote/PopAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->clickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mDevice_list_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public updateAdapter()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/aloys/formuler/airsyncremote/PopAdapter;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/aloys/formuler/airsyncremote/PopAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->resetData()V

    .line 147
    sget-object v0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->adapter:Lcom/aloys/formuler/airsyncremote/PopAdapter;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->notifyDataSetChanged()V

    .line 150
    :cond_1
    return-void
.end method
