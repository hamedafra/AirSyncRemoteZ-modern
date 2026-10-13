.class public Lorg/teleal/common/swingfwk/logging/LogCategory;
.super Ljava/lang/Object;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;,
        Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
    }
.end annotation


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$Group;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->groups:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "groups"    # [Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->groups:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->name:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->groups:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loggerLevels"    # [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->groups:Ljava/util/List;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    invoke-direct {v1, p1, p2}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogCategory;->name:Ljava/lang/String;

    return-object v0
.end method
