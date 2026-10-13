.class public Lorg/teleal/common/util/Gfx;
.super Ljava/lang/Object;
.source "Gfx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;
    .locals 9
    .param p0, "img"    # Ljava/awt/image/BufferedImage;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "hint"    # Ljava/lang/Object;
    .param p4, "higherQuality"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getTransparency()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 84
    .local v8, "type":I
    :goto_0
    move-object v1, p0

    .line 86
    .local v1, "ret":Ljava/awt/image/BufferedImage;
    if-eqz p4, :cond_4

    .line 90
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 91
    .local v4, "w":I
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 100
    .local v5, "h":I
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    if-le v4, p1, :cond_1

    .line 101
    div-int/lit8 v4, v4, 0x2

    .line 102
    if-ge v4, p1, :cond_1

    .line 103
    move v4, p1

    .line 107
    :cond_1
    if-eqz p4, :cond_2

    if-le v5, p2, :cond_2

    .line 108
    div-int/lit8 v5, v5, 0x2

    .line 109
    if-ge v5, p2, :cond_2

    .line 110
    move v5, p2

    .line 114
    :cond_2
    new-instance v7, Ljava/awt/image/BufferedImage;

    invoke-direct {v7, v4, v5, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 115
    .local v7, "tmp":Ljava/awt/image/BufferedImage;
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 116
    .local v0, "g2":Ljava/awt/Graphics2D;
    sget-object v3, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {v0, v3, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 117
    const/4 v6, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 118
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 120
    move-object v1, v7

    .line 121
    if-ne v4, p1, :cond_0

    if-ne v5, p2, :cond_0

    .line 123
    return-object v1

    .line 82
    .end local v0    # "g2":Ljava/awt/Graphics2D;
    .end local v1    # "ret":Ljava/awt/image/BufferedImage;
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v7    # "tmp":Ljava/awt/image/BufferedImage;
    .end local v8    # "type":I
    :cond_3
    const/4 v8, 0x2

    goto :goto_0

    .line 95
    .restart local v1    # "ret":Ljava/awt/image/BufferedImage;
    .restart local v8    # "type":I
    :cond_4
    move v4, p1

    .line 96
    .restart local v4    # "w":I
    move v5, p2

    .restart local v5    # "h":I
    goto :goto_1
.end method

.method public static resizeProportionally(Ljavax/swing/ImageIcon;Ljava/lang/String;II)[B
    .locals 18
    .param p0, "icon"    # Ljavax/swing/ImageIcon;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_1

    move/from16 v0, p2

    int-to-double v4, v0

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v3

    int-to-double v6, v3

    div-double v16, v4, v6

    .line 20
    .local v16, "widthRatio":D
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_2

    move/from16 v0, p3

    int-to-double v4, v0

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    int-to-double v6, v3

    div-double v12, v4, v6

    .line 24
    .local v12, "heightRatio":D
    :goto_1
    cmpg-double v3, v16, v12

    if-gez v3, :cond_3

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double v4, v4, v16

    double-to-int v0, v4

    move/from16 p3, v0

    .line 30
    :goto_2
    const-string v3, "image/png"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v14, 0x2

    .line 34
    .local v14, "imageType":I
    :goto_3
    new-instance v9, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v4

    invoke-direct {v9, v3, v4, v14}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 35
    .local v9, "bImg":Ljava/awt/image/BufferedImage;
    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 36
    .local v2, "g2d":Ljava/awt/Graphics2D;
    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 37
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    .line 39
    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v0, v1, v3, v4}, Lorg/teleal/common/util/Gfx;->getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;

    move-result-object v15

    .line 42
    .local v15, "scaledImg":Ljava/awt/image/BufferedImage;
    const-string v11, ""

    .line 43
    .local v11, "formatName":Ljava/lang/String;
    const-string v3, "image/png"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 44
    const-string v11, "png"

    .line 48
    :cond_0
    :goto_4
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v10, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 49
    .local v10, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v15, v11, v10}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 50
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 16
    .end local v2    # "g2d":Ljava/awt/Graphics2D;
    .end local v9    # "bImg":Ljava/awt/image/BufferedImage;
    .end local v10    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "formatName":Ljava/lang/String;
    .end local v12    # "heightRatio":D
    .end local v14    # "imageType":I
    .end local v15    # "scaledImg":Ljava/awt/image/BufferedImage;
    .end local v16    # "widthRatio":D
    :cond_1
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 20
    .restart local v16    # "widthRatio":D
    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 27
    .restart local v12    # "heightRatio":D
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v12

    double-to-int v0, v4

    move/from16 p2, v0

    goto :goto_2

    .line 30
    :cond_4
    const/4 v14, 0x1

    goto :goto_3

    .line 45
    .restart local v2    # "g2d":Ljava/awt/Graphics2D;
    .restart local v9    # "bImg":Ljava/awt/image/BufferedImage;
    .restart local v11    # "formatName":Ljava/lang/String;
    .restart local v14    # "imageType":I
    .restart local v15    # "scaledImg":Ljava/awt/image/BufferedImage;
    :cond_5
    const-string v3, "image/jpeg"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "image/jpg"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    :cond_6
    const-string v11, "jpeg"

    goto :goto_4
.end method
