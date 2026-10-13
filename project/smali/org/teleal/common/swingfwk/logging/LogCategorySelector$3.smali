.class Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;
.super Ljava/lang/Object;
.source "LogCategorySelector.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->addLoggerGroups(Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

.field final synthetic val$categoryPanel:Ljavax/swing/JPanel;

.field final synthetic val$logCategory:Lorg/teleal/common/swingfwk/logging/LogCategory;


# direct methods
.method constructor <init>(Lorg/teleal/common/swingfwk/logging/LogCategorySelector;Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    iput-object p2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$logCategory:Lorg/teleal/common/swingfwk/logging/LogCategory;

    iput-object p3, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 120
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$logCategory:Lorg/teleal/common/swingfwk/logging/LogCategory;

    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogCategory;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 121
    .local v0, "group":Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    invoke-virtual {v2, v0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->disableLoggerGroup(Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V

    goto :goto_0

    .line 123
    .end local v0    # "group":Lorg/teleal/common/swingfwk/logging/LogCategory$Group;
    :cond_0
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {v2}, Ljavax/swing/JPanel;->removeAll()V

    .line 124
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    iget-object v3, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$logCategory:Lorg/teleal/common/swingfwk/logging/LogCategory;

    iget-object v4, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {v2, v3, v4}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->addLoggerGroups(Lorg/teleal/common/swingfwk/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 125
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogCategorySelector$3;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {v2}, Ljavax/swing/JPanel;->revalidate()V

    .line 126
    return-void
.end method
