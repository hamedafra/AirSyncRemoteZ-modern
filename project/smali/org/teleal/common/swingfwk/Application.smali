.class public Lorg/teleal/common/swingfwk/Application;
.super Ljava/lang/Object;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static center(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 6
    .param p0, "w"    # Ljava/awt/Window;

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v3

    .local v3, "us":Ljava/awt/Dimension;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 88
    .local v2, "them":Ljava/awt/Dimension;
    iget v4, v2, Ljava/awt/Dimension;->width:I

    iget v5, v3, Ljava/awt/Dimension;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 89
    .local v0, "newX":I
    iget v4, v2, Ljava/awt/Dimension;->height:I

    iget v5, v3, Ljava/awt/Dimension;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 90
    .local v1, "newY":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 92
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/awt/Window;->setLocation(II)V

    .line 93
    return-object p0
.end method

.method public static center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;
    .locals 12
    .param p0, "w"    # Ljava/awt/Window;
    .param p1, "reference"    # Ljava/awt/Window;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 97
    invoke-virtual {p1}, Ljava/awt/Window;->getX()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v8

    div-double/2addr v8, v10

    add-double v2, v6, v8

    .line 98
    .local v2, "refCenterX":D
    invoke-virtual {p1}, Ljava/awt/Window;->getY()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v10

    add-double v4, v6, v8

    .line 99
    .local v4, "refCenterY":D
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double v6, v2, v6

    double-to-int v0, v6

    .line 100
    .local v0, "newX":I
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v10

    sub-double v6, v4, v6

    double-to-int v1, v6

    .line 101
    .local v1, "newY":I
    invoke-virtual {p0, v0, v1}, Ljava/awt/Window;->setLocation(II)V

    .line 102
    return-object p0
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 126
    .local v0, "clipboard":Ljava/awt/datatransfer/Clipboard;
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v1, p0}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "data":Ljava/awt/datatransfer/StringSelection;
    invoke-virtual {v0, v1, v1}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 128
    return-void
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 1
    .param p0, "base"    # Ljava/lang/Class;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 4
    .param p0, "base"    # Ljava/lang/Class;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 113
    .local v0, "imgURL":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-direct {v1, v0, p2}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v1

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find image icon on path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decreaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4
    .param p0, "l"    # Ljavax/swing/JComponent;

    .prologue
    .line 82
    new-instance v0, Ljava/awt/Font;

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    .line 83
    return-void
.end method

.method public static increaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4
    .param p0, "l"    # Ljavax/swing/JComponent;

    .prologue
    .line 78
    new-instance v0, Ljava/awt/Font;

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    .line 79
    return-void
.end method

.method public static maximize(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 5
    .param p0, "w"    # Ljava/awt/Window;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    .local v1, "us":Ljava/awt/Dimension;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 107
    .local v0, "them":Ljava/awt/Dimension;
    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v4, v4, v2, v3}, Ljava/awt/Window;->setBounds(IIII)V

    .line 108
    return-object p0
.end method

.method public static showError(Ljava/awt/Component;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "parent"    # Ljava/awt/Component;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 37
    new-instance v1, Ljavax/swing/JTextArea;

    invoke-direct {v1}, Ljavax/swing/JTextArea;-><init>()V

    .line 38
    .local v1, "textArea":Ljavax/swing/JTextArea;
    new-instance v3, Ljava/awt/Font;

    const-string v4, "Sans-Serif"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v6, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v3}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 39
    invoke-virtual {v1, v6}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 40
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 41
    .local v2, "writer":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 42
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 44
    .local v0, "scrollPane":Ljavax/swing/JScrollPane;
    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0x15e

    const/16 v5, 0x96

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 45
    const-string v3, "An Error Has Occurred"

    invoke-static {p0, v0, v3, v6}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static varargs showInfo(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 10
    .param p0, "parent"    # Ljava/awt/Component;
    .param p1, "infoLines"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 59
    new-instance v5, Ljavax/swing/JTextArea;

    invoke-direct {v5}, Ljavax/swing/JTextArea;-><init>()V

    .line 60
    .local v5, "textArea":Ljavax/swing/JTextArea;
    new-instance v6, Ljava/awt/Font;

    const-string v7, "Sans-Serif"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v9, v8}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v6}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 61
    invoke-virtual {v5, v9}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 62
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4, v5}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 64
    .local v4, "scrollPane":Ljavax/swing/JScrollPane;
    new-instance v6, Ljava/awt/Dimension;

    const/16 v7, 0x15e

    const/16 v8, 0x96

    invoke-direct {v6, v7, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v4, v6}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 65
    const-string v6, "Info"

    const/4 v7, 0x1

    invoke-static {p0, v4, v6, v7}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public static varargs showWarning(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 10
    .param p0, "parent"    # Ljava/awt/Component;
    .param p1, "warningLines"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 49
    new-instance v5, Ljavax/swing/JTextArea;

    invoke-direct {v5}, Ljavax/swing/JTextArea;-><init>()V

    .line 50
    .local v5, "textArea":Ljavax/swing/JTextArea;
    new-instance v6, Ljava/awt/Font;

    const-string v7, "Sans-Serif"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v9, v8}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v5, v6}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 51
    invoke-virtual {v5, v9}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 52
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4, v5}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 54
    .local v4, "scrollPane":Ljavax/swing/JScrollPane;
    new-instance v6, Ljava/awt/Dimension;

    const/16 v7, 0x15e

    const/16 v8, 0x96

    invoke-direct {v6, v7, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v4, v6}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 55
    const-string v6, "Warning"

    invoke-static {p0, v4, v6, v9}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 56
    return-void
.end method
