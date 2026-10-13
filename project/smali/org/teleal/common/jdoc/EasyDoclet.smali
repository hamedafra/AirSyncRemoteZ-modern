.class public Lorg/teleal/common/jdoc/EasyDoclet;
.super Ljava/lang/Object;
.source "EasyDoclet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;
    }
.end annotation


# instance fields
.field private final fileNames:[Ljava/io/File;

.field private final log:Ljava/util/logging/Logger;

.field private final packageNames:[Ljava/lang/String;

.field private final rootDoc:Lcom/sun/javadoc/RootDoc;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Collection;)V
    .locals 3
    .param p1, "sourceDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/File;

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 57
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 2
    .param p1, "sourceDirectory"    # Ljava/io/File;
    .param p2, "fileNames"    # [Ljava/io/File;

    .prologue
    .line 72
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 73
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/File;[Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceDirectory"    # Ljava/io/File;
    .param p2, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V
    .locals 1
    .param p1, "sourceDirectory"    # Ljava/io/File;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "fileNames"    # [Ljava/io/File;

    .prologue
    .line 80
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/Collection;)V
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sourceDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 61
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sourceDirectory"    # Ljava/io/File;
    .param p3, "fileNames"    # [Ljava/io/File;

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sourceDirectory"    # Ljava/io/File;
    .param p3, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sourceDirectory"    # Ljava/io/File;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "fileNames"    # [Ljava/io/File;

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/teleal/common/jdoc/EasyDoclet;-><init>(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Ljava/io/File;)V
    .locals 28
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sourceDirectories"    # [Ljava/io/File;
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "fileNames"    # [Ljava/io/File;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v2, Lorg/teleal/common/jdoc/EasyDoclet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    .line 88
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/teleal/common/jdoc/EasyDoclet;->packageNames:[Ljava/lang/String;

    .line 89
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/teleal/common/jdoc/EasyDoclet;->fileNames:[Ljava/io/File;

    .line 91
    new-instance v3, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 92
    .local v3, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v3}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v18

    .line 94
    .local v18, "compOpts":Lcom/sun/tools/javac/util/Options;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v25, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v16, p2

    .local v16, "arr$":[Ljava/io/File;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v26, v16, v21

    .line 96
    .local v26, "sourceDirectory":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 99
    .end local v26    # "sourceDirectory":Ljava/io/File;
    :cond_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using source path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    const-string v2, "-sourcepath"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v22, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct/range {v22 .. v22}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 106
    .local v22, "javaNames":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Ljava/lang/String;>;"
    move-object/from16 v16, p4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v20, v16, v21

    .line 107
    .local v20, "fileName":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding file to documentation path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 106
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 111
    .end local v20    # "fileName":Ljava/io/File;
    :cond_2
    new-instance v27, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct/range {v27 .. v27}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 112
    .local v27, "subPackages":Lcom/sun/tools/javac/util/ListBuffer;, "Lcom/sun/tools/javac/util/ListBuffer<Ljava/lang/String;>;"
    move-object/from16 v16, p3

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v24, v16, v21

    .line 113
    .local v24, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding sub-packages to documentation path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 112
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 117
    .end local v24    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/sun/tools/javadoc/PublicMessager;

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/common/jdoc/EasyDoclet;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;-><init>(Lorg/teleal/common/jdoc/EasyDoclet;Ljava/util/logging/Level;)V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v6, Ljava/io/PrintWriter;

    new-instance v7, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;-><init>(Lorg/teleal/common/jdoc/EasyDoclet;Ljava/util/logging/Level;)V

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v7, Ljava/io/PrintWriter;

    new-instance v8, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lorg/teleal/common/jdoc/EasyDoclet$LogWriter;-><init>(Lorg/teleal/common/jdoc/EasyDoclet;Ljava/util/logging/Level;)V

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct/range {v2 .. v7}, Lcom/sun/tools/javadoc/PublicMessager;-><init>(Lcom/sun/tools/javac/util/Context;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 125
    invoke-static {v3}, Lcom/sun/tools/javadoc/JavadocTool;->make0(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javadoc/JavadocTool;

    move-result-object v4

    .line 128
    .local v4, "javadocTool":Lcom/sun/tools/javadoc/JavadocTool;
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lcom/sun/tools/javadoc/ModifierFilter;

    const-wide v8, -0x7ffffffffffffff9L    # -3.5E-323

    invoke-direct {v7, v8, v9}, Lcom/sun/tools/javadoc/ModifierFilter;-><init>(J)V

    invoke-virtual/range {v22 .. v22}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v11

    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v15}, Lcom/sun/tools/javadoc/JavadocTool;->getRootDocImpl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/tools/javadoc/ModifierFilter;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZLcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;ZZZ)Lcom/sun/tools/javadoc/RootDocImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->rootDoc:Lcom/sun/javadoc/RootDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/common/jdoc/EasyDoclet;->getRootDoc()Lcom/sun/javadoc/RootDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/javadoc/RootDoc;->classes()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v16

    .local v16, "arr$":[Lcom/sun/javadoc/ClassDoc;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    aget-object v17, v16, v21

    .line 146
    .local v17, "classDoc":Lcom/sun/javadoc/ClassDoc;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed Javadoc class source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/sun/javadoc/ClassDoc;->position()Lcom/sun/javadoc/SourcePosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with inline tags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/sun/javadoc/ClassDoc;->inlineTags()[Lcom/sun/javadoc/Tag;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 140
    .end local v17    # "classDoc":Lcom/sun/javadoc/ClassDoc;
    .local v16, "arr$":[Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 141
    .local v19, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lorg/teleal/common/jdoc/EasyDoclet;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/jdoc/EasyDoclet;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/common/jdoc/EasyDoclet;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNames()[Ljava/io/File;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/teleal/common/jdoc/EasyDoclet;->fileNames:[Ljava/io/File;

    return-object v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/teleal/common/jdoc/EasyDoclet;->packageNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getRootDoc()Lcom/sun/javadoc/RootDoc;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/teleal/common/jdoc/EasyDoclet;->rootDoc:Lcom/sun/javadoc/RootDoc;

    return-object v0
.end method
