.class Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;
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
.field final synthetic val$b:Landroid/view/View;

.field final synthetic val$off:I

.field final synthetic val$on:I

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$b:Landroid/view/View;

    iput p3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$on:I

    iput p4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$off:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 300
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readBackgroundSetting()Z

    move-result p1

    .line 301
    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mirror_background_audio"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$b:Landroid/view/View;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$on:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;->val$off:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    return-void
.end method
