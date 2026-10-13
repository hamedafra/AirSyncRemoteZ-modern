.class public Lorg/teleal/common/swingfwk/BeanTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "BeanTableModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/swing/table/AbstractTableModel;"
    }
.end annotation


# instance fields
.field private beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "rows":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->beanClass:Ljava/lang/Class;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    :try_start_0
    new-instance v1, Ljava/beans/PropertyDescriptor;

    iget-object v2, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->beanClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, p2, v3}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v1, "property":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v1, p1}, Ljava/beans/PropertyDescriptor;->setDisplayName(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    .end local v1    # "property":Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addRow(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/BeanTableModel;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/BeanTableModel;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/swingfwk/BeanTableModel;->fireTableRowsInserted(II)V

    .line 97
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 44
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 56
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    const/4 v4, 0x0

    .line 57
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "entityInstance":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 59
    iget-object v5, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyDescriptor;

    .line 60
    .local v2, "property":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 62
    .local v3, "readMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 67
    .end local v2    # "property":Ljava/beans/PropertyDescriptor;
    .end local v3    # "readMethod":Ljava/lang/reflect/Method;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-object v4

    .line 63
    .restart local v2    # "property":Ljava/beans/PropertyDescriptor;
    .restart local v3    # "readMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeRow(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 100
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p1, p1}, Lorg/teleal/common/swingfwk/BeanTableModel;->fireTableRowsDeleted(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public resetColumns()V
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->properties:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setRow(ILjava/lang/Object;)V
    .locals 1
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    .local p2, "entityInstance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/BeanTableModel;->fireTableDataChanged()V

    .line 110
    return-void
.end method

.method public setRows(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/teleal/common/swingfwk/BeanTableModel;, "Lorg/teleal/common/swingfwk/BeanTableModel<TT;>;"
    .local p1, "rows":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/BeanTableModel;->rows:Ljava/util/List;

    .line 91
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/BeanTableModel;->fireTableDataChanged()V

    .line 92
    return-void
.end method
