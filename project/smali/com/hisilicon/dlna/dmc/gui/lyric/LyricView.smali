.class public Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;
.super Landroid/view/View;
.source "LyricView.java"


# static fields
.field public static final SIZEWORD:I = 0x18

.field private static blLrc:Z

.field private static lrc_map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private INTERVAL:I

.field private blScrollView:Z

.field private lrcIndex:I

.field private mX:F

.field private offsetY:F

.field paint:Landroid/graphics/Paint;

.field paintHL:Landroid/graphics/Paint;

.field private touchX:F

.field private touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blScrollView:Z

    .line 35
    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blScrollView:Z

    .line 35
    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->init()V

    .line 49
    return-void
.end method

.method public static isBlLrc()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    return v0
.end method

.method public static read(Ljava/lang/String;)V
    .locals 29
    .param p0, "file"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 203
    .local v12, "lrc_read":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;>;"
    const-string v5, ""

    .line 205
    .local v5, "data":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v20, "saveFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v27

    if-nez v27, :cond_1

    .line 207
    const/16 v27, 0x0

    sput-boolean v27, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    .line 303
    .end local v20    # "saveFile":Ljava/io/File;
    :cond_0
    return-void

    .line 210
    .restart local v20    # "saveFile":Ljava/io/File;
    :cond_1
    const/16 v27, 0x1

    sput-boolean v27, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    .line 212
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v23, "stream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    const-string v28, "utf-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 216
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 217
    .local v6, "i":I
    const-string v27, "\\d{2}"

    invoke-static/range {v27 .. v27}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 218
    .local v18, "pattern":Ljava/util/regex/Pattern;
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 220
    const-string v27, "["

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 221
    const-string v27, "]"

    const-string v28, "@"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 222
    const-string v27, "@"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 223
    .local v21, "splitdata":[Ljava/lang/String;
    const-string v27, "@"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 224
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_2

    .line 225
    aget-object v22, v21, v10

    .line 227
    .local v22, "str":Ljava/lang/String;
    const-string v27, ":"

    const-string v28, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 228
    const-string v27, "."

    const-string v28, "@"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 229
    const-string v27, "@"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 230
    .local v24, "timedata":[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v24, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 231
    .local v14, "matcher":Ljava/util/regex/Matcher;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 232
    const/16 v27, 0x0

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 233
    .local v13, "m":I
    const/16 v27, 0x1

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 234
    .local v19, "s":I
    const/16 v27, 0x2

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 235
    .local v15, "ms":I
    mul-int/lit8 v27, v13, 0x3c

    add-int v27, v27, v19

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    mul-int/lit8 v28, v15, 0xa

    add-int v4, v27, v28

    .line 236
    .local v4, "currTime":I
    new-instance v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    invoke-direct {v7}, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;-><init>()V

    .line 237
    .local v7, "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iput v4, v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->begintime:I

    .line 238
    const-string v27, ""

    move-object/from16 v0, v27

    iput-object v0, v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->lrc:Ljava/lang/String;

    .line 239
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v4    # "currTime":I
    .end local v7    # "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    .end local v13    # "m":I
    .end local v15    # "ms":I
    .end local v19    # "s":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 244
    .end local v10    # "k":I
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "str":Ljava/lang/String;
    .end local v24    # "timedata":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    aget-object v11, v21, v27

    .line 246
    .local v11, "lrcContenet":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_2

    .line 247
    aget-object v25, v21, v9

    .line 249
    .local v25, "tmpstr":Ljava/lang/String;
    const-string v27, ":"

    const-string v28, "."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 250
    const-string v27, "."

    const-string v28, "@"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 251
    const-string v27, "@"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 252
    .restart local v24    # "timedata":[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v24, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 253
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 254
    const/16 v27, 0x0

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 255
    .restart local v13    # "m":I
    const/16 v27, 0x1

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 256
    .restart local v19    # "s":I
    const/16 v27, 0x2

    aget-object v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 257
    .restart local v15    # "ms":I
    mul-int/lit8 v27, v13, 0x3c

    add-int v27, v27, v19

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    mul-int/lit8 v28, v15, 0xa

    add-int v4, v27, v28

    .line 258
    .restart local v4    # "currTime":I
    new-instance v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    invoke-direct {v7}, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;-><init>()V

    .line 259
    .restart local v7    # "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iput v4, v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->begintime:I

    .line 260
    iput-object v11, v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->lrc:Ljava/lang/String;

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v6, v6, 0x1

    .line 246
    .end local v4    # "currTime":I
    .end local v7    # "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    .end local v13    # "m":I
    .end local v15    # "ms":I
    .end local v19    # "s":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 269
    .end local v9    # "j":I
    .end local v11    # "lrcContenet":Ljava/lang/String;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v21    # "splitdata":[Ljava/lang/String;
    .end local v24    # "timedata":[Ljava/lang/String;
    .end local v25    # "tmpstr":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "i":I
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .end local v20    # "saveFile":Ljava/io/File;
    .end local v23    # "stream":Ljava/io/FileInputStream;
    :goto_2
    sget-object v27, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->clear()V

    .line 278
    const-string v5, ""

    .line 279
    invoke-virtual {v12}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 280
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 281
    .local v17, "oldval":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    const/4 v6, 0x0

    .line 282
    .restart local v6    # "i":I
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 283
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 285
    .local v16, "ob":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    .line 287
    .local v26, "val":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    if-nez v17, :cond_8

    .line 288
    move-object/from16 v17, v26

    .line 297
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_7

    .line 298
    sget-object v27, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 290
    :cond_8
    new-instance v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    invoke-direct {v7}, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;-><init>()V

    .line 291
    .restart local v7    # "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    move-object/from16 v7, v17

    .line 292
    move-object/from16 v0, v26

    iget v0, v0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->begintime:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->begintime:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v7, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->timeline:I

    .line 293
    sget-object v27, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v6, v6, 0x1

    .line 295
    move-object/from16 v17, v26

    goto :goto_4

    .line 271
    .end local v6    # "i":I
    .end local v7    # "item1":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16    # "ob":Ljava/lang/Object;
    .end local v17    # "oldval":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    .end local v26    # "val":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    :catch_0
    move-exception v27

    goto :goto_2

    .line 270
    :catch_1
    move-exception v27

    goto :goto_2
.end method


# virtual methods
.method public SelectIndex(I)I
    .locals 6
    .param p1, "time"    # I

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-boolean v4, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    if-nez v4, :cond_0

    .line 189
    :goto_0
    return v3

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 180
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    .line 181
    .local v2, "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iget v4, v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->begintime:I

    if-ge v4, p1, :cond_1

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    :cond_2
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    .line 186
    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    if-gez v4, :cond_3

    .line 187
    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    .line 189
    :cond_3
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    goto :goto_0
.end method

.method public SpeedLrc()Ljava/lang/Float;
    .locals 5

    .prologue
    const/high16 v4, 0x435c0000    # 220.0f

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "speed":F
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 155
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    const/high16 v2, 0x41a00000    # 20.0f

    div-float v0, v1, v2

    .line 164
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 157
    :cond_1
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 158
    const-string v1, "speed"

    const-string v2, "speed is too fast!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 124
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    .line 125
    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 132
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    .line 135
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 137
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x41c00000    # 24.0f

    .line 58
    sget-boolean v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    if-eqz v2, :cond_4

    .line 59
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    .line 62
    .local v1, "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->lrc:Ljava/lang/String;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->mX:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v5, v5, 0x18

    iget v6, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 66
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    .line 67
    .restart local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v3, v3, 0x18

    mul-int/2addr v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 74
    :cond_0
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrcIndex:I

    add-int/lit8 v0, v2, 0x1

    :goto_1
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 75
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;

    .line 76
    .restart local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v3, v3, 0x18

    mul-int/2addr v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 89
    .end local v0    # "i":I
    .end local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void

    .line 70
    .restart local v0    # "i":I
    .restart local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    :cond_2
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->lrc:Ljava/lang/String;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->mX:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v5, v5, 0x18

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;->lrc:Ljava/lang/String;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->mX:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->INTERVAL:I

    add-int/lit8 v5, v5, 0x18

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "i":I
    .end local v1    # "temp":Lcom/hisilicon/dlna/dmc/gui/lyric/LyricObject;
    :cond_4
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 143
    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->mX:F

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bllll==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blScrollView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 102
    .local v0, "tt":F
    sget-boolean v1, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blLrc:Z

    if-nez v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_1
    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->touchY:F

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->touchX:F

    goto :goto_1

    .line 112
    :pswitch_1
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->touchY:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->touchY:F

    .line 113
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->touchY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    goto :goto_1

    .line 116
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->blScrollView:Z

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOffsetY(F)V
    .locals 0
    .param p1, "offsetY"    # F

    .prologue
    .line 324
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/lyric/LyricView;->offsetY:F

    .line 325
    return-void
.end method
