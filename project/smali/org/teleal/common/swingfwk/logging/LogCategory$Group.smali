.class public Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
.super Ljava/lang/Object;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/swingfwk/logging/LogCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field private enabled:Z

.field private loggerLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private previousLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loggerLevels"    # [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->name:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public getLoggerLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->enabled:Z

    .line 84
    return-void
.end method

.method public setPreviousLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "previousLevels":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;>;"
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    .line 92
    return-void
.end method
