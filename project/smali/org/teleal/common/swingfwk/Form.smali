.class public Lorg/teleal/common/swingfwk/Form;
.super Ljava/lang/Object;
.source "Form.java"


# instance fields
.field public labelConstraints:Ljava/awt/GridBagConstraints;

.field public lastConstraints:Ljava/awt/GridBagConstraints;

.field public middleConstraints:Ljava/awt/GridBagConstraints;

.field public separatorConstraints:Ljava/awt/GridBagConstraints;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "padding"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 43
    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    .line 44
    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    .line 45
    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 53
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 56
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    iput v5, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 60
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    const/16 v1, 0x12

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 63
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 66
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    iput v4, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 69
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    new-instance v1, Ljava/awt/Insets;

    invoke-direct {v1, p1, p1, p1, p1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 72
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0}, Ljava/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagConstraints;

    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    .line 77
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 81
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0}, Ljava/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagConstraints;

    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    .line 85
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 86
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 88
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 89
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    iput v5, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 90
    iget-object v0, p0, Lorg/teleal/common/swingfwk/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    iput v4, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 91
    return-void
.end method


# virtual methods
.method public addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/awt/Container;

    .prologue
    .line 120
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "c":Ljavax/swing/JLabel;
    invoke-virtual {p0, v0, p2}, Lorg/teleal/common/swingfwk/Form;->addLabel(Ljava/awt/Component;Ljava/awt/Container;)V

    .line 122
    return-object v0
.end method

.method public addLabel(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2
    .param p1, "c"    # Ljava/awt/Component;
    .param p2, "parent"    # Ljava/awt/Container;

    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagLayout;

    .line 112
    .local v0, "gbl":Ljava/awt/GridBagLayout;
    iget-object v1, p0, Lorg/teleal/common/swingfwk/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 113
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 114
    return-void
.end method

.method public addLabelAndLastField(Ljava/lang/String;Ljava/awt/Container;Ljava/awt/Container;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/awt/Container;
    .param p3, "parent"    # Ljava/awt/Container;

    .prologue
    .line 138
    invoke-virtual {p0, p1, p3}, Lorg/teleal/common/swingfwk/Form;->addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;

    .line 139
    invoke-virtual {p0, p2, p3}, Lorg/teleal/common/swingfwk/Form;->addLastField(Ljava/awt/Component;Ljava/awt/Container;)V

    .line 140
    return-void
.end method

.method public addLabelAndLastField(Ljava/lang/String;Ljava/lang/String;Ljava/awt/Container;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/awt/Container;

    .prologue
    .line 143
    invoke-virtual {p0, p1, p3}, Lorg/teleal/common/swingfwk/Form;->addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;

    .line 144
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lorg/teleal/common/swingfwk/Form;->addLastField(Ljava/awt/Component;Ljava/awt/Container;)V

    .line 145
    return-void
.end method

.method public addLastField(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2
    .param p1, "c"    # Ljava/awt/Component;
    .param p2, "parent"    # Ljava/awt/Container;

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagLayout;

    .line 100
    .local v0, "gbl":Ljava/awt/GridBagLayout;
    iget-object v1, p0, Lorg/teleal/common/swingfwk/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 101
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 102
    return-void
.end method

.method public addMiddleField(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2
    .param p1, "c"    # Ljava/awt/Component;
    .param p2, "parent"    # Ljava/awt/Container;

    .prologue
    .line 132
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagLayout;

    .line 133
    .local v0, "gbl":Ljava/awt/GridBagLayout;
    iget-object v1, p0, Lorg/teleal/common/swingfwk/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 134
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 135
    return-void
.end method

.method public addSeparator(Ljava/awt/Container;)V
    .locals 3
    .param p1, "parent"    # Ljava/awt/Container;

    .prologue
    .line 148
    new-instance v1, Ljavax/swing/JSeparator;

    invoke-direct {v1}, Ljavax/swing/JSeparator;-><init>()V

    .line 149
    .local v1, "separator":Ljavax/swing/JSeparator;
    invoke-virtual {p1}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagLayout;

    .line 150
    .local v0, "gbl":Ljava/awt/GridBagLayout;
    iget-object v2, p0, Lorg/teleal/common/swingfwk/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0, v1, v2}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 151
    invoke-virtual {p1, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 152
    return-void
.end method
