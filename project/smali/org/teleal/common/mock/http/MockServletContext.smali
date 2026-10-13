.class public Lorg/teleal/common/mock/http/MockServletContext;
.super Ljava/lang/Object;
.source "MockServletContext.java"

# interfaces
.implements Ljavax/servlet/ServletContext;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webInfClassesRoot:Ljava/io/File;

.field private webInfRoot:Ljava/io/File;

.field private webappRoot:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->initParameters:Ljava/util/Map;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    .line 47
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/WEB-INF/web.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 48
    .local v1, "webxml":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 50
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfRoot:Ljava/io/File;

    .line 51
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfRoot:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfRoot:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/classes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfClassesRoot:Ljava/io/File;

    .line 54
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webappRoot:Ljava/io/File;

    .line 57
    :cond_0
    invoke-direct {p0, v1}, Lorg/teleal/common/mock/http/MockServletContext;->processContextParameters(Ljava/net/URL;)V

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v2, p0, Lorg/teleal/common/mock/http/MockServletContext;->webappRoot:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "webxml":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static addPaths(Ljava/util/Set;[Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 154
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "filePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "root"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_1

    move-object v0, v1

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 210
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method private processContextParameters(Ljava/net/URL;)V
    .locals 0
    .param p1, "webXML"    # Ljava/net/URL;

    .prologue
    .line 92
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lorg/teleal/common/mock/http/IteratorEnumeration;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/common/mock/http/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    return-object p0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->initParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lorg/teleal/common/mock/http/IteratorEnumeration;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->initParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/common/mock/http/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->initParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->webappRoot:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->webappRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    .end local p1    # "relativePath":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->webappRoot:Ljava/io/File;

    invoke-static {p1, v1}, Lorg/teleal/common/mock/http/MockServletContext;->getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 180
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfRoot:Ljava/io/File;

    invoke-static {p1, v1}, Lorg/teleal/common/mock/http/MockServletContext;->getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 183
    :cond_0
    if-nez v0, :cond_1

    .line 185
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockServletContext;->webInfClassesRoot:Ljava/io/File;

    invoke-static {p1, v1}, Lorg/teleal/common/mock/http/MockServletContext;->getFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 188
    :cond_1
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 129
    .local v1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "WEB-INF"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 139
    .local v6, "url":Ljava/net/URL;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 140
    .local v5, "rootFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 142
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v2, v7}, Lorg/teleal/common/mock/http/MockServletContext;->addPaths(Ljava/util/Set;[Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "newFile":Ljava/io/File;
    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "rootFile":Ljava/io/File;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error finding webroot."

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v4
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "Mock"

    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 254
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 264
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 305
    if-nez p2, :cond_0

    .line 307
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockServletContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
