.class public Lorg/teleal/common/util/OS;
.super Ljava/lang/Object;
.source "OS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForHp()Z
    .locals 2

    .prologue
    .line 29
    const-string v0, "os.name"

    const-string v1, "hp"

    invoke-static {v0, v1}, Lorg/teleal/common/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForLinux()Z
    .locals 2

    .prologue
    .line 25
    const-string v0, "os.name"

    const-string v1, "linux"

    invoke-static {v0, v1}, Lorg/teleal/common/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForMac()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "os.name"

    const-string v1, "mac"

    invoke-static {v0, v1}, Lorg/teleal/common/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 50
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static checkForSolaris()Z
    .locals 2

    .prologue
    .line 33
    const-string v0, "os.name"

    const-string v1, "sun"

    invoke-static {v0, v1}, Lorg/teleal/common/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkForWindows()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "os.name"

    const-string v1, "win"

    invoke-static {v0, v1}, Lorg/teleal/common/util/OS;->checkForPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
