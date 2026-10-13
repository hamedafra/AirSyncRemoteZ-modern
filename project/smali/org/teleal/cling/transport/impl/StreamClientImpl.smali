.class public Lorg/teleal/cling/transport/impl/StreamClientImpl;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/impl/StreamClientImpl$UpnpURLConnection;
    }
.end annotation


# static fields
.field static final HACK_STREAM_HANDLER_SYSTEM_PROPERTY:Ljava/lang/String; = "hackStreamHandlerProperty"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;)V
    .locals 5
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    .line 66
    sget-object v2, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using persistent HTTP stream client connections: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->isUsePersistentConnections()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    const-string v2, "http.keepAlive"

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->isUsePersistentConnections()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const-string v2, "hackStreamHandlerProperty"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Setting custom static URLStreamHandlerFactory to work around Sun JDK bugs"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lorg/teleal/cling/transport/impl/StreamClientImpl$1;

    invoke-direct {v0, p0}, Lorg/teleal/cling/transport/impl/StreamClientImpl$1;-><init>(Lorg/teleal/cling/transport/impl/StreamClientImpl;)V

    .line 94
    .local v0, "shf":Ljava/net/URLStreamHandlerFactory;
    :try_start_0
    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const-string v2, "hackStreamHandlerProperty"

    const-string v3, "alreadyWorkedAroundTheEvilJDK"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .end local v0    # "shf":Ljava/net/URLStreamHandlerFactory;
    :cond_0
    return-void

    .line 95
    .restart local v0    # "shf":Ljava/net/URLStreamHandlerFactory;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/teleal/cling/transport/spi/InitializationException;

    .line 97
    const-string v3, "URLStreamHandlerFactory already set for this JVM. Can\'t use bundled default client based on JDK\'s HTTPURLConnection. Consider alternatives, e.g. org.teleal.cling.transport.impl.apache.StreamClientImpl."

    .line 96
    invoke-direct {v2, v3}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected applyHeaders(Ljava/net/HttpURLConnection;Lorg/teleal/common/http/Headers;)V
    .locals 8
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "headers"    # Lorg/teleal/common/http/Headers;

    .prologue
    .line 191
    sget-object v3, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writing headers on HttpURLConnection: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/teleal/common/http/Headers;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Lorg/teleal/common/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    return-void

    .line 192
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "v":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "headerName":Ljava/lang/String;
    sget-object v5, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting header \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected applyRequestBody(Ljava/net/HttpURLConnection;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "requestMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 210
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/teleal/common/io/IO;->writeUTF8(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 216
    :goto_1
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getBodyBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/teleal/common/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    goto :goto_0
.end method

.method protected applyRequestProperties(Ljava/net/HttpURLConnection;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "requestMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 182
    const-string v0, "User-Agent"

    .line 183
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUdaMajorVersion()I

    move-result v2

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUdaMinorVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->getUserAgentValue(II)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->applyHeaders(Ljava/net/HttpURLConnection;Lorg/teleal/common/http/Headers;)V

    .line 188
    return-void
.end method

.method protected createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 7
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 221
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Did not receive valid HTTP response"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x0

    .line 262
    :goto_0
    return-object v2

    .line 226
    :cond_0
    new-instance v3, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 228
    .local v3, "responseOperation":Lorg/teleal/cling/model/message/UpnpResponse;
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 231
    new-instance v2, Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 234
    .local v2, "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    new-instance v4, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "bodyBytes":[B
    const/4 v1, 0x0

    .line 240
    .local v1, "is":Ljava/io/InputStream;
    move-object v1, p2

    .line 241
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v1}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 243
    :cond_1
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 247
    :cond_2
    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->isContentTypeMissingOrText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Response contains textual entity body, converting then setting string on message"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setBodyCharacters([B)V

    .line 261
    :goto_1
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response message complete: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v4

    .line 243
    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 245
    :cond_3
    throw v4

    .line 252
    :cond_4
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    .line 254
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Response contains binary entity body, setting bytes on message"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 255
    sget-object v4, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v2, v4, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_5
    sget-object v4, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Response did not contain entity body"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getConfiguration()Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/StreamClientConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 11
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/UpnpRequest;

    .line 115
    .local v4, "requestOperation":Lorg/teleal/cling/model/message/UpnpRequest;
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Preparing HTTP request message with method \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/common/util/URIUtil;->toURL(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v5

    .line 119
    .local v5, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 123
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 125
    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    iget-object v7, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    invoke-virtual {v7}, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->getDataReadTimeoutSeconds()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 127
    iget-object v7, p0, Lorg/teleal/cling/transport/impl/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;

    invoke-virtual {v7}, Lorg/teleal/cling/transport/impl/StreamClientConfigurationImpl;->getConnectionTimeoutSeconds()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 129
    invoke-virtual {p0, v6, p1}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->applyRequestProperties(Ljava/net/HttpURLConnection;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 130
    invoke-virtual {p0, v6, p1}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->applyRequestBody(Ljava/net/HttpURLConnection;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 132
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sending HTTP request: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 134
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v6, v3}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 160
    if-eqz v6, :cond_0

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v7

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ex":Ljava/net/ProtocolException;
    :try_start_1
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unrecoverable HTTP protocol exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    if-eqz v6, :cond_1

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v7, v8

    .line 138
    goto :goto_0

    .line 139
    .end local v2    # "ex":Ljava/net/ProtocolException;
    :catch_1
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    if-nez v6, :cond_3

    .line 142
    :try_start_2
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not open URL connection: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v7, v8

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    :try_start_3
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v9, "Exception occured, trying to read the error stream"

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 149
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v6, v3}, Lorg/teleal/cling/transport/impl/StreamClientImpl;->createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 160
    if-eqz v6, :cond_0

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 150
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 151
    .local v1, "errorEx":Ljava/lang/Exception;
    :try_start_5
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not read error stream: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    if-eqz v6, :cond_4

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v7, v8

    .line 152
    goto :goto_0

    .line 154
    .end local v1    # "errorEx":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 155
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v7, Lorg/teleal/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unrecoverable exception occured, no error response possible: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    if-eqz v6, :cond_5

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v7, v8

    .line 156
    goto/16 :goto_0

    .line 158
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 160
    if-eqz v6, :cond_6

    .line 162
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_6
    throw v7
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
