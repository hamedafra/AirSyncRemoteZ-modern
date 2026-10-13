.class Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;
.super Ljava/lang/Object;
.source "PlatformApple.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/shared/PlatformApple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppListenerProxy"
.end annotation


# instance fields
.field private appController:Lorg/teleal/common/swingfwk/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/common/swingfwk/Controller",
            "<",
            "Ljavax/swing/JFrame;",
            ">;"
        }
    .end annotation
.end field

.field private object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/teleal/common/swingfwk/Controller;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/teleal/common/swingfwk/Controller",
            "<",
            "Ljavax/swing/JFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "appController":Lorg/teleal/common/swingfwk/Controller;, "Lorg/teleal/common/swingfwk/Controller<Ljavax/swing/JFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/teleal/common/swingfwk/Controller;

    .line 66
    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Lorg/teleal/common/swingfwk/Controller;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/teleal/common/swingfwk/Controller",
            "<",
            "Ljavax/swing/JFrame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "appController":Lorg/teleal/common/swingfwk/Controller;, "Lorg/teleal/common/swingfwk/Controller<Ljavax/swing/JFrame;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 59
    new-instance v2, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;

    invoke-direct {v2, p0, p1}, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;-><init>(Ljava/lang/Object;Lorg/teleal/common/swingfwk/Controller;)V

    .line 56
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "result":Ljava/lang/Object;
    :try_start_0
    const-string v1, "handleQuit"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/teleal/common/swingfwk/Controller;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/teleal/common/swingfwk/Controller;

    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Controller;->dispose()V

    .line 74
    iget-object v1, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->appController:Lorg/teleal/common/swingfwk/Controller;

    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Controller;->getView()Ljava/awt/Container;

    move-result-object v1

    check-cast v1, Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljavax/swing/JFrame;->dispose()V

    .line 82
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 77
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/teleal/cling/support/shared/PlatformApple$AppListenerProxy;->object:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method
