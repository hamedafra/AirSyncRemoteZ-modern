.class public Lorg/cybergarage/multiscreenhttp/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final CACHE_CONTROL:Ljava/lang/String; = "CACHE-CONTROL"

.field public static final CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final CONNECTION:Ljava/lang/String; = "CONNECTION"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "CONTENT-LENGTH"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "CONTENT-TYPE"

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DATE:Ljava/lang/String; = "DATE"

.field public static final DEFAULT_CHUNK_SIZE:I = 0x10000

.field public static final DEFAULT_PORT:I = 0x50

.field public static final EXT:Ljava/lang/String; = "EXT"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEADER_LINE_DELIM:Ljava/lang/String; = " :"

.field public static final HOST:Ljava/lang/String; = "HOST"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MAN:Ljava/lang/String; = "MAN"

.field public static final MAX_AGE:Ljava/lang/String; = "max-age"

.field public static final MX:Ljava/lang/String; = "MX"

.field public static final M_SEARCH:Ljava/lang/String; = "M-SEARCH"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NT:Ljava/lang/String; = "NT"

.field public static final NTS:Ljava/lang/String; = "NTS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final REQEST_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SEQ:Ljava/lang/String; = "SEQ"

.field public static final SERVER:Ljava/lang/String; = "SERVER"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final SOAP_ACTION:Ljava/lang/String; = "SOAPACTION"

.field public static final ST:Ljava/lang/String; = "ST"

.field public static final STATUS_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field public static final UNSUBSCRIBE:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final USN:Ljava/lang/String; = "USN"

.field public static final VERSION:Ljava/lang/String; = "1.0"

.field public static final VERSION_10:Ljava/lang/String; = "1.0"

.field public static final VERSION_11:Ljava/lang/String; = "1.1"

.field private static chunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const/high16 v0, 0x10000

    sput v0, Lorg/cybergarage/multiscreenhttp/HTTP;->chunkSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "baseURLStr"    # Ljava/lang/String;
    .param p1, "relURlStr"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "baseURL":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    invoke-static {p1}, Lorg/cybergarage/multiscreenhttp/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 238
    .end local v0    # "baseURL":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static final getChunkSize()I
    .locals 1

    .prologue
    .line 255
    sget v0, Lorg/cybergarage/multiscreenhttp/HTTP;->chunkSize:I

    return v0
.end method

.method public static final getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static final getPort(Ljava/lang/String;)I
    .locals 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    .local v1, "port":I
    if-gtz v1, :cond_0

    .line 159
    const/16 v1, 0x50

    .line 164
    .end local v1    # "port":I
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x50

    goto :goto_0
.end method

.method public static final getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "reqHost":Ljava/lang/String;
    return-object v0
.end method

.method public static final isAbsoluteURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v1, "url":Ljava/net/URL;
    const/4 v2, 0x1

    .line 130
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return v2

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final setChunkSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 250
    sput p0, Lorg/cybergarage/multiscreenhttp/HTTP;->chunkSize:I

    .line 251
    return-void
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "withParam"    # Z

    .prologue
    const/4 v4, 0x0

    .line 184
    move-object v1, p0

    .line 186
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p0}, Lorg/cybergarage/multiscreenhttp/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "queryStr":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .end local v0    # "queryStr":Ljava/lang/String;
    :cond_2
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 208
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
