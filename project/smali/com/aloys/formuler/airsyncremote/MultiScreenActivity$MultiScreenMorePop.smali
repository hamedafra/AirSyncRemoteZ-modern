.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;
.super Landroid/widget/PopupWindow;
.source "MultiScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiScreenMorePop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 1741
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .line 1742
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 1744
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2102(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/View;)Landroid/view/View;

    .line 1746
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2202(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1747
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1749
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2302(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1750
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1752
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2402(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1753
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2502(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1756
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setContentView(Landroid/view/View;)V

    .line 1759
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setWidth(I)V

    .line 1760
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setHeight(I)V

    .line 1761
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setFocusable(Z)V

    .line 1762
    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setTouchable(Z)V

    .line 1763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setOutsideTouchable(Z)V

    .line 1764
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1765
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->update()V

    .line 1766
    return-void
.end method
