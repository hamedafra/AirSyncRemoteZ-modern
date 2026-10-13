.class public final Lcom/aloys/formuler/airsyncremote/CompatHelper;
.super Ljava/lang/Object;
.source "CompatHelper.smali"

# Added to make the app work on modern Android (targetSdk 28).


.method public static relaxVmPolicy()V
    .locals 1

    # Allow file:// URIs to be shared with other apps (camera capture in DLNA browser),
    # which otherwise throws FileUriExposedException on Android 7+.
    :try_start
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;
    move-result-object v0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end
    .catchall {:try_start .. :try_end} :done

    :done
    return-void
.end method


.method public static requestPermissions(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    # Runtime permissions (Android 6+): ask for the dangerous permissions the app uses
    # that have not been granted yet.
    # Notification channel for background mirror audio; creating it early lets Android 13+
    # ask for the notification permission.
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->createChannel(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x17
    if-lt v0, v1, :done

    :try_start
    const/4 v0, 0x4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0
    const-string v2, "android.permission.RECORD_AUDIO"
    aput-object v2, v0, v1

    const/4 v1, 0x1
    const-string v2, "android.permission.CAMERA"
    aput-object v2, v0, v1

    const/4 v1, 0x2
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"
    aput-object v2, v0, v1

    const/4 v1, 0x3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"
    aput-object v2, v0, v1

    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :loop
    array-length v3, v0
    if-ge v2, v3, :after_loop

    aget-object v3, v0, v2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I
    move-result v4
    if-eqz v4, :next

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :next
    add-int/lit8 v2, v2, 0x1
    goto :loop

    :after_loop
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-nez v2, :try_end

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v2
    new-array v2, v2, [Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x2b67
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end
    .catchall {:try_start .. :try_end} :done

    :done
    return-void
.end method
