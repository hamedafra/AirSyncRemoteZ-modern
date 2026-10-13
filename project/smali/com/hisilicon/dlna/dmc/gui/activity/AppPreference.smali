.class public Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;
.super Ljava/lang/Object;
.source "AppPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoNext()Z
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getBooleanPreferences(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCameraCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f08007d

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDLNACreater()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f08007e

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080031

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f08007f

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080039

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f080080

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080046

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxItemPerLoad()I
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f080085

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getIntPreferences(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMultiScreenUDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f080081

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayPosition()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f080086

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getIntPreferences(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getShuffle()Z
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f080087

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getBooleanPreferences(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppFirstUse()Z
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f080083

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getIntPreferences(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMirrorFirstUse()Z
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f080084

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getIntPreferences(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppAlreadyUse()V
    .locals 2

    .prologue
    .line 18
    const v0, 0x7f080083

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setIntPreferences(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public static setCameraCachePath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 87
    const v0, 0x7f08007d

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setStringPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static setMirrrorUse()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f080084

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setIntPreferences(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public static setMultiScreenUDN(Ljava/lang/String;)V
    .locals 1
    .param p0, "udn"    # Ljava/lang/String;

    .prologue
    .line 71
    const v0, 0x7f080081

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setStringPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static setPlayPosition(I)V
    .locals 1
    .param p0, "playPosition"    # I

    .prologue
    .line 95
    const v0, 0x7f080086

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setIntPreferences(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public static setShuffle(Z)V
    .locals 1
    .param p0, "shuffle"    # Z

    .prologue
    .line 51
    const v0, 0x7f080087

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setBooleanPreferences(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method
