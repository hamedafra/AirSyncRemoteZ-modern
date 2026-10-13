.class public Lcom/hisilicon/multiscreen/protocol/utils/AppListTransmitter;
.super Ljava/lang/Object;
.source "AppListTransmitter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromTransmitPacket([B)Ljava/util/List;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/AppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v2, "oIn":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 51
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hisilicon/multiscreen/protocol/message/AppInfo;>;"
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 52
    return-object v0
.end method

.method public static toTransmitPacket(Lcom/hisilicon/multiscreen/protocol/message/Action;Landroid/content/pm/PackageManager;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 22
    .param p0, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v9, "iOut":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v8, "i":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 160
    .local v14, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v14, :cond_0

    .line 162
    const/16 p0, 0x0

    .line 250
    .end local p0    # "action":Lcom/hisilicon/multiscreen/protocol/message/Action;
    :goto_0
    return-object p0

    .line 166
    .restart local p0    # "action":Lcom/hisilicon/multiscreen/protocol/message/Action;
    :cond_0
    new-instance v18, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    const/4 v13, 0x0

    .line 169
    .local v13, "pIndex":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 171
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v15, "resolve":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 174
    .local v10, "img":Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_1

    .line 169
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 184
    .local v16, "src":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    const/16 v18, 0x28

    const/16 v19, 0x28

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/hisilicon/multiscreen/protocol/utils/AppListTransmitter;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 191
    .local v17, "zoom":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 192
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x32

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 195
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 197
    .local v7, "data":[B
    new-instance v4, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 199
    .local v4, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    .line 201
    new-instance v5, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 203
    .local v5, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    packed-switch v12, :pswitch_data_0

    .line 231
    const-string v18, "PackageIcon"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 237
    :cond_2
    :goto_4
    invoke-virtual {v4, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 199
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 207
    :pswitch_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 209
    const-string v18, "AppName"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 217
    :pswitch_1
    const-string v18, "PackageName"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 218
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 224
    :pswitch_2
    const-string v18, "PackageIndex"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 225
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 240
    .end local v5    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 243
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 248
    .end local v4    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "data":[B
    .end local v10    # "img":Landroid/graphics/drawable/Drawable;
    .end local v12    # "j":I
    .end local v15    # "resolve":Landroid/content/pm/ResolveInfo;
    .end local v16    # "src":Landroid/graphics/Bitmap;
    .end local v17    # "zoom":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toTransmitPacket(Landroid/content/pm/PackageManager;)[B
    .locals 23
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/io/ObjectOutputStream;

    invoke-direct {v13, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v13, "oOut":Ljava/io/ObjectOutputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v10, "iOut":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v9, "i":Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 74
    .local v15, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v15, :cond_0

    .line 76
    const/4 v8, 0x0

    .line 142
    :goto_0
    return-object v8

    .line 80
    :cond_0
    new-instance v19, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    const/4 v14, 0x0

    .line 83
    .local v14, "pIndex":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v5, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hisilicon/multiscreen/protocol/message/AppInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 86
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v16, "resolve":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 94
    .local v11, "img":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_2

    .line 84
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 99
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 104
    new-instance v4, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;

    invoke-direct {v4}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;-><init>()V

    .line 105
    .local v4, "app":Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4, v14}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageIndex(I)V

    .line 110
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 114
    .local v17, "src":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    const/16 v19, 0x28

    const/16 v20, 0x28

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/hisilicon/multiscreen/protocol/utils/AppListTransmitter;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 121
    .local v18, "zoom":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 122
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x32

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 125
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageIcon([B)V

    .line 126
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 134
    .end local v4    # "app":Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "img":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resolve":Landroid/content/pm/ResolveInfo;
    .end local v17    # "src":Landroid/graphics/Bitmap;
    .end local v18    # "zoom":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v13, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v13}, Ljava/io/ObjectOutputStream;->flush()V

    .line 136
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 139
    .local v8, "data":[B
    invoke-virtual {v13}, Ljava/io/ObjectOutputStream;->close()V

    .line 140
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_0
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 265
    .local v4, "h":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 266
    .local v3, "w":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v7, v0, v2

    .line 267
    .local v7, "sx":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 268
    .local v8, "sy":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 270
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 271
    .local v9, "zoom":Landroid/graphics/Bitmap;
    return-object v9
.end method
