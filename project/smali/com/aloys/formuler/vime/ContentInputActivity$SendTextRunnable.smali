.class Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendTextRunnable"
.end annotation


# instance fields
.field private mCurrentText:Ljava/lang/String;

.field private mEndSelection:I

.field private mStartSelection:I

.field final synthetic this$0:Lcom/aloys/formuler/vime/ContentInputActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;II)V
    .locals 2
    .param p2, "currentText"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 630
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    .line 625
    iput v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    .line 627
    iput v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    .line 631
    iput-object p2, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    .line 632
    iput p3, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    .line 633
    iput p4, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    .line 634
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mCurrentText:Ljava/lang/String;

    iget v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mStartSelection:I

    iget v3, p0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;->mEndSelection:I

    invoke-static {v0, v1, v2, v3}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$400(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;II)V

    .line 640
    return-void
.end method
