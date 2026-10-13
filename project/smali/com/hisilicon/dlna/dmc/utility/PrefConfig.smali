.class public Lcom/hisilicon/dlna/dmc/utility/PrefConfig;
.super Ljava/lang/Object;
.source "PrefConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanPreferences(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getBooleanPreferences(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanPreferences(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 60
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getFloatPreferences(Ljava/lang/String;)F
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getFloatPreferences(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getFloatPreferences(Ljava/lang/String;F)F
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # F

    .prologue
    .line 79
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getIntPreferences(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getIntPreferences(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIntPreferences(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defalutValue"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIntPreferences(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "sharedPreferences"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, "pref":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "sharedPreferences"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStringPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getStringPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setBooleanPreferences(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 49
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public static setFloatPreferences(Ljava/lang/String;F)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 66
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public static setIntPreferences(Ljava/lang/String;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 84
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public static setIntPreferences(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "sharedPreferences"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 13
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    return-void
.end method

.method public static setStringPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method
