.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;
.super Landroid/os/Handler;
.source "RemoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteActivityHandler"
.end annotation


# instance fields
.field mActivityReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aloys/formuler/airsyncremote/RemoteActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 1143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1144
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1149
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .line 1150
    .local v1, "thisActivity":Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    if-nez v1, :cond_1

    .line 1152
    const-string v3, "get activity fail."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1161
    :pswitch_1
    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1000(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    goto :goto_0

    .line 1168
    :pswitch_2
    const-string v3, "device info is null!"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1169
    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1171
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1178
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1179
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    .end local v2    # "uuid":Ljava/lang/String;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1186
    .local v0, "friendlyname":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1188
    const-string v0, ""

    .line 1190
    :cond_2
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$300()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    sget-object v3, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_disconnected:Landroid/widget/ImageView;

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1197
    .end local v0    # "friendlyname":Ljava/lang/String;
    :pswitch_5
    invoke-static {v1, v5}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1202(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Z)Z

    goto :goto_0

    .line 1203
    :pswitch_6
    iget v3, v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1205
    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1300(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    goto :goto_0

    .line 1212
    :pswitch_7
    iget v3, v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1214
    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$400(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    goto :goto_0

    .line 1221
    :pswitch_8
    iget v3, v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 1223
    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1400(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    goto :goto_0

    .line 1230
    :pswitch_9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
