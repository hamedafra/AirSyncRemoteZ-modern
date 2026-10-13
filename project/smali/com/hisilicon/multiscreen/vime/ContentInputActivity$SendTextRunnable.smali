.class Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendTextRunnable"
.end annotation


# instance fields
.field private mCurrentText:Ljava/lang/String;

.field private mEndSelection:I

.field private mStartSelection:I

.field final synthetic this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;Ljava/lang/String;II)V
    .locals 2
    .param p2, "currentText"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 626
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    .line 621
    iput v1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    .line 623
    iput v1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    .line 627
    iput-object p2, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    .line 628
    iput p3, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    .line 629
    iput p4, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    .line 630
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 635
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    iget v3, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    invoke-static {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity;->access$400(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;Ljava/lang/String;II)V

    .line 636
    return-void
.end method
