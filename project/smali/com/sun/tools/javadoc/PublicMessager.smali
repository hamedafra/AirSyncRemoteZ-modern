.class public Lcom/sun/tools/javadoc/PublicMessager;
.super Lcom/sun/tools/javadoc/Messager;
.source "PublicMessager.java"


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/sun/tools/javac/util/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javadoc/Messager;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "context"    # Lcom/sun/tools/javac/util/Context;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "printWriter"    # Ljava/io/PrintWriter;
    .param p4, "printWriter1"    # Ljava/io/PrintWriter;
    .param p5, "printWriter2"    # Ljava/io/PrintWriter;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/sun/tools/javadoc/Messager;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 35
    return-void
.end method
