.class public Lcom/aloys/formuler/airsyncremote/DeviceChildView;
.super Landroid/widget/LinearLayout;
.source "DeviceChildView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDevice_gridview:Landroid/widget/GridView;

.field public mImageIds:[Ljava/lang/Integer;

.field public mtags:[Ljava/lang/String;

.field public mtags_info:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f02002a

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f02001f

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mImageIds:[Ljava/lang/Integer;

    .line 20
    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags:[Ljava/lang/String;

    .line 22
    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags_info:[Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f02002a

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f02001f

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mImageIds:[Ljava/lang/Integer;

    .line 20
    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags:[Ljava/lang/String;

    .line 22
    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags_info:[Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method public initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags:[Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags_info:[Ljava/lang/String;

    .line 67
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mDevice_gridview:Landroid/widget/GridView;

    .line 69
    return-void
.end method
