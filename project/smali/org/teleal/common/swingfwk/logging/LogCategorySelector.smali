.class public Lorg/teleal/common/swingfwk/logging/LogCategorySelector;
.super Ljavax/swing/JDialog;
.source "LogCategorySelector.java"


# instance fields
.field protected final mainPanel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "logCategories":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    const/16 v5, 0xa

    .line 45
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 43
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    .line 46
    const-string v1, "Select logging categories..."

    invoke-virtual {p0, v1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->setTitle(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    new-instance v2, Ljavax/swing/BoxLayout;

    iget-object v3, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 49
    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    invoke-static {v5, v5, v5, v5}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 51
    invoke-virtual {p0, p1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->addLogCategories(Ljava/util/List;)V

    .line 53
    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 54
    .local v0, "scrollPane":Ljavax/swing/JScrollPane;
    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 55
    invoke-virtual {p0, v0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 57
    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x2ee

    const/16 v3, 0x226

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->setResizable(Z)V

    .line 59
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->pack()V

    .line 60
    return-void
.end method


# virtual methods
.method protected addLogCategories(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "logCategories":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/logging/LogCategory;

    .line 64
    .local v1, "logCategory":Lorg/teleal/common/swingfwk/logging/LogCategory;
    invoke-virtual {p0, v1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->addLogCategory(Lorg/teleal/common/swingfwk/logging/LogCategory;)V

    goto :goto_0

    .line 66
    .end local v1    # "logCategory":Lorg/teleal/common/swingfwk/logging/LogCategory;
    :cond_0
    return-void
.end method

.method protected addLogCategory(Lorg/teleal/common/swingfwk/logging/LogCategory;)V
    .locals 2
    .param p1, "logCategory"    # Lorg/teleal/common/swingfwk/logging/LogCategory;

    .prologue
    .line 70
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 71
    .local v0, "categoryPanel":Ljavax/swing/JPanel;
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 73
    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->addLoggerGroups(Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 75
    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 76
    return-void
.end method

.method protected addLoggerGroups(Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V
    .locals 10
    .param p1, "logCategory"    # Lorg/teleal/common/swingfwk/logging/LogCategory;
    .param p2, "categoryPanel"    # Ljavax/swing/JPanel;

    .prologue
    const/4 v9, 0x0

    .line 80
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    .line 81
    .local v2, "checkboxPanel":Ljavax/swing/JPanel;
    new-instance v7, Ljavax/swing/BoxLayout;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v2, v7}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 82
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory;->getGroups()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 84
    .local v5, "group":Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
    new-instance v1, Ljavax/swing/JCheckBox;

    invoke-virtual {v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "checkBox":Ljavax/swing/JCheckBox;
    invoke-virtual {v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->isEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 86
    invoke-virtual {v1, v9}, Ljavax/swing/JCheckBox;->setFocusable(Z)V

    .line 87
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$1;

    invoke-direct {v7, p0, v5}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$1;-><init>(Lorg/teleal/common/swingfwk/logging/LogCategorySelector;Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V

    invoke-virtual {v1, v7}, Ljavax/swing/JCheckBox;->addItemListener(Ljava/awt/event/ItemListener;)V

    .line 96
    invoke-virtual {v2, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_0

    .line 99
    .end local v1    # "checkBox":Ljavax/swing/JCheckBox;
    .end local v5    # "group":Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
    :cond_0
    new-instance v0, Ljavax/swing/JToolBar;

    invoke-direct {v0}, Ljavax/swing/JToolBar;-><init>()V

    .line 100
    .local v0, "buttonBar":Ljavax/swing/JToolBar;
    invoke-virtual {v0, v9}, Ljavax/swing/JToolBar;->setFloatable(Z)V

    .line 102
    new-instance v4, Ljavax/swing/JButton;

    const-string v7, "All"

    invoke-direct {v4, v7}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "enableAllButton":Ljavax/swing/JButton;
    invoke-virtual {v4, v9}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 104
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$2;

    invoke-direct {v7, p0, p1, p2}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$2;-><init>(Lorg/teleal/common/swingfwk/logging/LogCategorySelector;Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V

    invoke-virtual {v4, v7}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 114
    invoke-virtual {v0, v4}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 116
    new-instance v3, Ljavax/swing/JButton;

    const-string v7, "None"

    invoke-direct {v3, v7}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "disableAllButton":Ljavax/swing/JButton;
    invoke-virtual {v3, v9}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 118
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;

    invoke-direct {v7, p0, p1, p2}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;-><init>(Lorg/teleal/common/swingfwk/logging/LogCategorySelector;Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V

    invoke-virtual {v3, v7}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 128
    invoke-virtual {v0, v3}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 130
    const-string v7, "Center"

    invoke-virtual {p2, v2, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 131
    const-string v7, "North"

    invoke-virtual {p2, v0, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected disableLoggerGroup(Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V
    .locals 4
    .param p1, "group"    # Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .prologue
    .line 150
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->setEnabled(Z)V

    .line 152
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 153
    .local v2, "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 154
    .local v1, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    .line 157
    .end local v1    # "logger":Ljava/util/logging/Logger;
    .end local v2    # "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getLoggerLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 160
    .restart local v2    # "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 161
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_1

    .line 165
    .end local v1    # "logger":Ljava/util/logging/Logger;
    .end local v2    # "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    :cond_1
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method protected enableLoggerGroup(Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V
    .locals 7
    .param p1, "group"    # Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .prologue
    .line 135
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->setEnabled(Z)V

    .line 137
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 138
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getLoggerLevels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 139
    .local v2, "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 141
    .local v1, "logger":Ljava/util/logging/Logger;
    invoke-virtual {p1}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->getLevel(Ljava/util/logging/Logger;)Ljava/util/logging/Level;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;->getLevel()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    .line 147
    .end local v1    # "logger":Ljava/util/logging/Logger;
    .end local v2    # "loggerLevel":Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;
    :cond_0
    return-void
.end method

.method public getLevel(Ljava/util/logging/Logger;)Ljava/util/logging/Level;
    .locals 2
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    .line 170
    .local v0, "level":Ljava/util/logging/Level;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method
