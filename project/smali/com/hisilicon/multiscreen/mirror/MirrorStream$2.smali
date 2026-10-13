.class Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;
.super Ljava/lang/Object;
.source "MirrorStream.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;->attachSettings(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$v:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;->val$v:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 285
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readMode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x3

    .line 286
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mirror_smooth_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;->val$v:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->access$000(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method
