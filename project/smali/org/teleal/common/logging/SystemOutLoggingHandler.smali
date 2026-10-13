.class public Lorg/teleal/common/logging/SystemOutLoggingHandler;
.super Ljava/util/logging/StreamHandler;
.source "SystemOutLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/logging/SystemOutLoggingHandler$SimpleFormatter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/teleal/common/logging/SystemOutLoggingHandler$SimpleFormatter;

    invoke-direct {v1}, Lorg/teleal/common/logging/SystemOutLoggingHandler$SimpleFormatter;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/logging/StreamHandler;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V

    .line 42
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lorg/teleal/common/logging/SystemOutLoggingHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/teleal/common/logging/SystemOutLoggingHandler;->flush()V

    .line 47
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 50
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 51
    invoke-virtual {p0}, Lorg/teleal/common/logging/SystemOutLoggingHandler;->flush()V

    .line 52
    return-void
.end method
