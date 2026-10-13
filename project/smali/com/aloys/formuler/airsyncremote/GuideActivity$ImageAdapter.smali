.class Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$000(Lcom/aloys/formuler/airsyncremote/GuideActivity;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x14

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 113
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {v2, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "i":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .line 116
    invoke-virtual {v5}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v6}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$000(Lcom/aloys/formuler/airsyncremote/GuideActivity;)[Ljava/lang/Integer;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v7}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$100(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v8}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$200(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I

    move-result v8

    .line 115
    invoke-static {v5, v6, v7, v8}, Lcom/hisilicon/multiscreen/protocol/utils/ImageResourseDecodeUtils;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    new-instance v5, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v4, "txt":Landroid/widget/TextView;
    :try_start_0
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$300(Lcom/aloys/formuler/airsyncremote/GuideActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-virtual {v4, v11, v5, v11, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$400(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 139
    return-object v2

    .line 124
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
