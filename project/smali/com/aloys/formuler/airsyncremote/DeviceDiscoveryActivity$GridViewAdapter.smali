.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mImageId:[Ljava/lang/Integer;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mtag:[Ljava/lang/String;

.field private mtags_info:[Ljava/lang/String;

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;[Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p2, "mImageIds"    # [Ljava/lang/Integer;
    .param p3, "mtags"    # [Ljava/lang/String;
    .param p4, "mtags_info"    # [Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 1617
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    .line 1618
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1620
    iput-object p2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mImageId:[Ljava/lang/Integer;

    .line 1621
    iput-object p3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mtag:[Ljava/lang/String;

    .line 1622
    iput-object p4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mtags_info:[Ljava/lang/String;

    .line 1624
    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 1628
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1629
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1630
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 1631
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1632
    .local v0, "bmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1635
    .end local v0    # "bmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-void
.end method

.method static synthetic access$2100(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mImageId:[Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1655
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    .line 1663
    if-nez p2, :cond_1

    .line 1665
    iget-object v6, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030009

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1666
    new-instance v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;)V

    .line 1668
    .local v5, "viewHolder":Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;
    const v6, 0x7f0b0028

    .line 1669
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    .line 1671
    const v6, 0x7f0b0029

    .line 1672
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_tag_info:Landroid/widget/TextView;

    .line 1673
    const v6, 0x7f0b002a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_layer:Landroid/widget/ImageView;

    .line 1674
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1681
    :goto_0
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1682
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1683
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_layer:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1684
    iget-object v6, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mImageId:[Ljava/lang/Integer;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1685
    .local v1, "bit1":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 1686
    .local v0, "bit":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 1687
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1689
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->preScaleBitmap(Landroid/graphics/Bitmap;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    .line 1690
    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 1694
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v2, :cond_2

    .line 1696
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1709
    :goto_1
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_tag_info:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mtags_info:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    iget-object v6, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    new-instance v7, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;

    invoke-direct {v7, p0, v5, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1774
    return-object p2

    .line 1678
    .end local v0    # "bit":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v1    # "bit1":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "viewHolder":Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    .restart local v5    # "viewHolder":Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;
    goto :goto_0

    .line 1700
    .restart local v0    # "bit":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v1    # "bit1":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1701
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1702
    new-instance v3, Ljava/lang/ref/SoftReference;

    .line 1703
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mImageId:[Ljava/lang/Integer;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1705
    .local v3, "bmp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v6, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->map:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->mImageId:[Ljava/lang/Integer;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v7, v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public preScaleBitmap(Landroid/graphics/Bitmap;)Ljava/lang/ref/SoftReference;
    .locals 10
    .param p1, "temp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1782
    if-nez p1, :cond_0

    .line 1783
    const/4 v9, 0x0

    .line 1790
    :goto_0
    return-object v9

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$2400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x46

    int-to-float v8, v0

    .line 1785
    .local v8, "scaleWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v8, v0

    .line 1786
    .local v7, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1787
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1788
    new-instance v9, Ljava/lang/ref/SoftReference;

    .line 1789
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1790
    .local v9, "temp2":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    goto :goto_0
.end method
