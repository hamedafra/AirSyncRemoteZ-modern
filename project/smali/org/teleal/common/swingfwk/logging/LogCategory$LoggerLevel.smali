.class public Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
.super Ljava/lang/Object;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/swingfwk/logging/LogCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerLevel"
.end annotation


# instance fields
.field private level:Ljava/util/logging/Level;

.field private logger:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 0
    .param p1, "logger"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->logger:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->level:Ljava/util/logging/Level;

    .line 102
    return-void
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->logger:Ljava/lang/String;

    return-object v0
.end method
