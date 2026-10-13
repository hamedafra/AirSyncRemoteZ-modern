.class public abstract Lorg/teleal/common/swingfwk/logging/LoggingHandler;
.super Ljava/util/logging/Handler;
.source "LoggingHandler.java"


# instance fields
.field public sourcePathElements:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->sourcePathElements:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sourcePathElements"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->sourcePathElements:I

    .line 35
    iput p1, p0, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->sourcePathElements:I

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected getSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 8
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0xb4

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    iget v7, p0, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->sourcePathElements:I

    if-le v6, v7, :cond_0

    .line 58
    array-length v6, v5

    iget v7, p0, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->sourcePathElements:I

    sub-int/2addr v6, v7

    array-length v7, v5

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "split":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 60
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 61
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected abstract log(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "logRecord"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->getSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/common/swingfwk/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, "logMessage":Lorg/teleal/common/swingfwk/logging/LogMessage;
    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/logging/LoggingHandler;->log(Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    .line 46
    return-void
.end method
