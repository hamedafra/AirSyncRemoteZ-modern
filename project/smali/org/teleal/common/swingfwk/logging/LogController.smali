.class public abstract Lorg/teleal/common/swingfwk/logging/LogController;
.super Lorg/teleal/common/swingfwk/AbstractController;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/swingfwk/AbstractController",
        "<",
        "Ljavax/swing/JPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final clearButton:Ljavax/swing/JButton;

.field private final configureButton:Ljavax/swing/JButton;

.field private final copyButton:Ljavax/swing/JButton;

.field private final expandButton:Ljavax/swing/JButton;

.field private final expirationComboBox:Ljavax/swing/JComboBox;

.field private final logCategorySelector:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

.field private final logTable:Ljavax/swing/JTable;

.field private final logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

.field private final pauseButton:Ljavax/swing/JButton;

.field private final pauseLabel:Ljavax/swing/JLabel;

.field private final toolBar:Ljavax/swing/JToolBar;


# direct methods
.method public constructor <init>(Lorg/teleal/common/swingfwk/Controller;Ljava/util/List;)V
    .locals 1
    .param p1, "parentController"    # Lorg/teleal/common/swingfwk/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/swingfwk/Controller;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "logCategories":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    sget-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/common/swingfwk/logging/LogController;-><init>(Lorg/teleal/common/swingfwk/Controller;Lorg/teleal/common/swingfwk/logging/LogController$Expiration;Ljava/util/List;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/swingfwk/Controller;Lorg/teleal/common/swingfwk/logging/LogController$Expiration;Ljava/util/List;)V
    .locals 4
    .param p1, "parentController"    # Lorg/teleal/common/swingfwk/Controller;
    .param p2, "expiration"    # Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/swingfwk/Controller;",
            "Lorg/teleal/common/swingfwk/logging/LogController$Expiration;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "logCategories":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogCategory;>;"
    const/16 v3, 0xfa

    .line 98
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    invoke-direct {p0, v0, p1}, Lorg/teleal/common/swingfwk/AbstractController;-><init>(Ljava/awt/Container;Lorg/teleal/common/swingfwk/Controller;)V

    .line 56
    new-instance v0, Ljavax/swing/JToolBar;

    invoke-direct {v0}, Ljavax/swing/JToolBar;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 57
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->createConfigureButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->configureButton:Ljavax/swing/JButton;

    .line 58
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->createClearButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->clearButton:Ljavax/swing/JButton;

    .line 59
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->createCopyButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 60
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->createExpandButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 61
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->createPauseButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    .line 62
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, " (Active)"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    .line 63
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-static {}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->values()[Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 100
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    invoke-direct {v0, p3}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logCategorySelector:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    .line 102
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogTableModel;

    invoke-virtual {p2}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->getSeconds()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/teleal/common/swingfwk/logging/LogTableModel;-><init>(I)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

    .line 103
    new-instance v0, Ljavax/swing/JTable;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

    invoke-direct {v0, v1}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 105
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    const-class v1, Lorg/teleal/common/swingfwk/logging/LogMessage;

    new-instance v2, Lorg/teleal/common/swingfwk/logging/LogController$1;

    invoke-direct {v2, p0}, Lorg/teleal/common/swingfwk/logging/LogController$1;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTable;->setDefaultRenderer(Ljava/lang/Class;Ljavax/swing/table/TableCellRenderer;)V

    .line 125
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setCellSelectionEnabled(Z)V

    .line 126
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setRowSelectionAllowed(Z)V

    .line 127
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$2;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$2;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-interface {v0, v1}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 156
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->adjustTableUI()V

    .line 157
    invoke-virtual {p0, p2}, Lorg/teleal/common/swingfwk/logging/LogController;->initializeToolBar(Lorg/teleal/common/swingfwk/logging/LogController$Expiration;)V

    .line 159
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 160
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x32

    invoke-direct {v1, v3, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 161
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-direct {v1, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JTable;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    return-object v0
.end method

.method static synthetic access$200(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    return-object v0
.end method

.method static synthetic access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

    return-object v0
.end method

.method static synthetic access$400(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogCategorySelector;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logCategorySelector:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    return-object v0
.end method

.method static synthetic access$500(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JLabel;
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/swingfwk/logging/LogController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    return-object v0
.end method


# virtual methods
.method protected adjustTableUI()V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0, v2}, Ljavax/swing/JTable;->setFocusable(Z)V

    .line 184
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setRowHeight(I)V

    .line 185
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getTableHeader()Ljavax/swing/table/JTableHeader;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/swing/table/JTableHeader;->setReorderingAllowed(Z)V

    .line 186
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setBorder(Ljavax/swing/border/Border;)V

    .line 188
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 189
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 190
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setResizable(Z)V

    .line 193
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v3}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 194
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v3}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 195
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v3}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setResizable(Z)V

    .line 197
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v4}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 198
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v4}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 200
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v5}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 201
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    invoke-interface {v0, v5}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 203
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 204
    return-void
.end method

.method protected createClearButton()Ljavax/swing/JButton;
    .locals 4

    .prologue
    .line 301
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Clear Log"

    const-class v2, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v3, "img/removetext.png"

    invoke-static {v2, v3}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    return-object v0
.end method

.method protected createConfigureButton()Ljavax/swing/JButton;
    .locals 4

    .prologue
    .line 297
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Options..."

    const-class v2, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v3, "img/configure.png"

    invoke-static {v2, v3}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    return-object v0
.end method

.method protected createCopyButton()Ljavax/swing/JButton;
    .locals 4

    .prologue
    .line 305
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Copy"

    const-class v2, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v3, "img/copyclipboard.png"

    invoke-static {v2, v3}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    return-object v0
.end method

.method protected createExpandButton()Ljavax/swing/JButton;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Expand"

    const-class v2, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v3, "img/viewtext.png"

    invoke-static {v2, v3}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    return-object v0
.end method

.method protected createPauseButton()Ljavax/swing/JButton;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Pause/Continue Log"

    const-class v2, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v3, "img/pause.png"

    invoke-static {v2, v3}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    return-object v0
.end method

.method protected abstract expand(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
.end method

.method protected getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .prologue
    .line 321
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v1, "img/debug.png"

    invoke-static {v0, v1}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandMessageCharacterLimit()I
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x64

    return v0
.end method

.method protected getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .prologue
    .line 329
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v1, "img/info.png"

    invoke-static {v0, v1}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method public getLogTableModel()Lorg/teleal/common/swingfwk/logging/LogTableModel;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

    return-object v0
.end method

.method protected abstract getParentWindow()Ljava/awt/Frame;
.end method

.method protected getSelectedMessages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/logging/LogMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/logging/LogMessage;>;"
    iget-object v5, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTable:Ljavax/swing/JTable;

    invoke-virtual {v5}, Ljavax/swing/JTable;->getSelectedRows()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 283
    .local v4, "row":I
    iget-object v5, p0, Lorg/teleal/common/swingfwk/logging/LogController;->logTableModel:Lorg/teleal/common/swingfwk/logging/LogTableModel;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v4    # "row":I
    :cond_0
    return-object v3
.end method

.method protected getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .prologue
    .line 325
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v1, "img/trace.png"

    invoke-static {v0, v1}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .prologue
    .line 317
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogController;

    const-string v1, "img/warn.png"

    invoke-static {v0, v1}, Lorg/teleal/common/swingfwk/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object v0

    return-object v0
.end method

.method protected initializeToolBar(Lorg/teleal/common/swingfwk/logging/LogController$Expiration;)V
    .locals 5
    .param p1, "expiration"    # Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->configureButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 208
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->configureButton:Ljavax/swing/JButton;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$4;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$4;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 215
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->clearButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 216
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->clearButton:Ljavax/swing/JButton;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$5;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$5;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 222
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 223
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$6;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$6;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 235
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 236
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$7;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$7;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 245
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v4}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 246
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$8;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$8;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 257
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x64

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 259
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    new-instance v1, Lorg/teleal/common/swingfwk/logging/LogController$9;

    invoke-direct {v1, p0}, Lorg/teleal/common/swingfwk/logging/LogController$9;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 267
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v4}, Ljavax/swing/JToolBar;->setFloatable(Z)V

    .line 268
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->copyButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 269
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expandButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 270
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 271
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->configureButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 272
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->clearButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 273
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 274
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 275
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 276
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "Clear after:"

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 277
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 278
    return-void
.end method

.method public pushMessage(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
    .locals 1
    .param p1, "message"    # Lorg/teleal/common/swingfwk/logging/LogMessage;

    .prologue
    .line 167
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogController$3;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/swingfwk/logging/LogController$3;-><init>(Lorg/teleal/common/swingfwk/logging/LogController;Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method
