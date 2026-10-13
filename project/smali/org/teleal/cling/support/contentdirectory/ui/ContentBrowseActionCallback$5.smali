.class Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

.field private final synthetic val$defaultMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->val$defaultMsg:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->val$defaultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failureUI(Ljava/lang/String;)V

    .line 140
    return-void
.end method
