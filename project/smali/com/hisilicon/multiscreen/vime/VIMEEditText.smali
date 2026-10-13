.class public Lcom/hisilicon/multiscreen/vime/VIMEEditText;
.super Landroid/widget/EditText;
.source "VIMEEditText.java"


# instance fields
.field private mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    .line 28
    return-void
.end method


# virtual methods
.method public addWatcher(Lcom/hisilicon/multiscreen/vime/EditTextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    .line 38
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    invoke-interface {v0, p1, p2}, Lcom/hisilicon/multiscreen/vime/EditTextWatcher;->onSelectionChanged(II)V

    .line 56
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/multiscreen/vime/EditTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 47
    :cond_0
    return-void
.end method
