.class Lcom/aloys/formuler/vime/ContentInputActivity$3;
.super Ljava/lang/Object;
.source "ContentInputActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/vime/EditTextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/vime/ContentInputActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/vime/ContentInputActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$3;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 6
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity$3;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$3;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-static {v1}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$100(Lcom/aloys/formuler/vime/ContentInputActivity;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$200(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;IIJ)V

    .line 214
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 204
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$3;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v3, p2, p4

    add-int v4, p2, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;II)V

    .line 206
    .local v0, "mSendTextRunnable":Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 207
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$3;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$102(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    return-void
.end method
