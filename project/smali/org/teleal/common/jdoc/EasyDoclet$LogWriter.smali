.class public Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;
.super Ljava/io/Writer;
.source "EasyDoclet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/jdoc/EasyDoclet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LogWriter"
.end annotation


# instance fields
.field level:Ljava/util/logging/Level;

.field final synthetic this$0:Lorg/teleal/common/jdoc/EasyDoclet;


# direct methods
.method public constructor <init>(Lorg/teleal/common/jdoc/EasyDoclet;Ljava/util/logging/Level;)V
    .locals 0
    .param p2, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;->this$0:Lorg/teleal/common/jdoc/EasyDoclet;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 169
    iput-object p2, p0, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;->level:Ljava/util/logging/Level;

    .line 170
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 174
    .local v0, "s":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;->this$0:Lorg/teleal/common/jdoc/EasyDoclet;

    invoke-static {v1}, Lorg/teleal/common/jdoc/EasyDoclet;->access$000(Lorg/teleal/common/jdoc/EasyDoclet;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;->level:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method
