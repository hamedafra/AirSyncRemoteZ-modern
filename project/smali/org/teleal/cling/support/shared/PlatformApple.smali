.class public Lorg/teleal/cling/support/shared/PlatformApple;
.super Ljava/lang/Object;
.source "PlatformApple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup(Lorg/teleal/common/swingfwk/Controller;Ljava/lang/String;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/swingfwk/Controller",
            "<",
            "Ljavax/swing/JFrame;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "appController":Lorg/teleal/common/swingfwk/Controller;, "Lorg/teleal/common/swingfwk/Controller<Ljavax/swing/JFrame;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    const-string v6, "apple.laf.useScreenMenuBar"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    const-string v6, "com.apple.mrj.application.apple.menu.about.name"

    invoke-static {v6, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    const-string v6, "apple.awt.showGrowBox"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    const-string v6, "com.apple.eawt.Application"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 40
    .local v2, "appClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "application":Ljava/lang/Object;
    const-string v6, "com.apple.eawt.ApplicationListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 42
    .local v5, "listenerClass":Ljava/lang/Class;
    const-string v6, "addApplicationListener"

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v5, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "addAppListmethod":Ljava/lang/reflect/Method;
    const-string v6, "com.apple.eawt.ApplicationAdapter"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "adapterClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p0}, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->newInstance(Ljava/lang/Object;Lorg/teleal/common/swingfwk/Controller;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    .local v4, "listener":Ljava/lang/Object;
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
