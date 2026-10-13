.class public final Lorg/cybergarage/multiscreenutil/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final STACK_LEVEL:I = 0x5

.field public static final TAG_PREFIX:Ljava/lang/String; = "[HiMultiScreenHttpServer]"

.field public static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOn()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    return v0
.end method

.method public static final message(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "[HiMultiScreenHttpServer]"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static final message(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "m1"    # Ljava/lang/String;
    .param p1, "m2"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "[HiMultiScreenHttpServer]"

    const-string v1, "http message:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "[HiMultiScreenHttpServer]"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "[HiMultiScreenHttpServer]"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static final off()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    .line 38
    return-void
.end method

.method public static final on()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cybergarage/multiscreenutil/Debug;->enabled:Z

    .line 33
    return-void
.end method

.method public static final warning(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    return-void
.end method

.method public static final warning(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "[HiMultiScreenHttpServer]"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public static final warning(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "m"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 74
    const-string v0, "[HiMultiScreenHttpServer]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http warning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
