.class public Lorg/teleal/cling/support/shared/AWTExceptionHandler;
.super Ljava/lang/Object;
.source "AWTExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "============= The application encountered an unrecoverable error, exiting... ============="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 28
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "=========================================================================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 30
    return-void
.end method
