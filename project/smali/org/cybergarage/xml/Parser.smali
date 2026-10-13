.class public abstract Lorg/cybergarage/xml/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public GetRootElemFromApachHttp(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 12
    .param p1, "locationURL"    # Ljava/net/URL;

    .prologue
    const/16 v10, 0x7d0

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, "rootElem":Lorg/cybergarage/xml/Node;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 237
    .local v4, "httpParameters":Lorg/apache/http/params/HttpParams;
    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 239
    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const/4 v2, 0x0

    .line 243
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v7, 0x0

    .line 244
    .local v7, "response":Lorg/apache/http/HttpResponse;
    const/4 v9, 0x0

    .line 247
    .local v9, "urlIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .local v6, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_2
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 250
    invoke-virtual {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 251
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 252
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 253
    invoke-virtual {p0, v9}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 277
    if-eqz v9, :cond_2

    .line 281
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .line 290
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_0
    :goto_0
    return-object v8

    .line 283
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .line 286
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/net/URISyntaxException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v9, :cond_0

    .line 281
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 283
    :catch_2
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 261
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    if-eqz v9, :cond_0

    .line 281
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 283
    :catch_4
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    if-eqz v9, :cond_0

    .line 281
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 283
    :catch_6
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 277
    if-eqz v9, :cond_0

    .line 281
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_0

    .line 283
    :catch_8
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 273
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Lorg/cybergarage/xml/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 277
    if-eqz v9, :cond_0

    .line 281
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_0

    .line 283
    :catch_a
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v9, :cond_1

    .line 281
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 286
    :cond_1
    :goto_7
    throw v10

    .line 283
    :catch_b
    move-exception v0

    .line 285
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_7

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .line 271
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_d
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 267
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_f
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 263
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_11
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 259
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_12
    move-exception v0

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_2

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_13
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_2

    .line 255
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_14
    move-exception v0

    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_15
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_2
    move-object v2, v3

    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v5, v6

    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0
.end method

.method public GetRootElemFromCyberHttp(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 10
    .param p1, "locationURL"    # Ljava/net/URL;

    .prologue
    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "rootElem":Lorg/cybergarage/xml/Node;
    const/4 v6, 0x0

    .line 182
    .local v6, "urlCon":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 183
    .local v7, "urlIn":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 186
    .local v3, "port":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 187
    const/16 v3, 0x50

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "uri":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 192
    const-string v8, "GET"

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 193
    const-string v8, "Content-Length"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v8, 0x7d0

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 196
    const/16 v8, 0x7d0

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 197
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 199
    if-eqz v2, :cond_1

    .line 200
    const-string v8, "HOST"

    invoke-virtual {v6, v8, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 202
    invoke-virtual {p0, v7}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 211
    if-eqz v7, :cond_2

    .line 215
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 224
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 227
    :cond_3
    :goto_1
    return-object v4

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v7, :cond_4

    .line 215
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    if-eqz v6, :cond_3

    .line 224
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 217
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_5

    .line 215
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 224
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v8

    .line 217
    :catch_3
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getRootNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 3
    .param p1, "locationURL"    # Ljava/net/URL;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "rootElem":Lorg/cybergarage/xml/Node;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Parser;->GetRootElemFromApachHttp(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Parser;->GetRootElemFromCyberHttp(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    .locals 4
    .param p1, "descriptionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v1, "fileIn":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 133
    .local v2, "root":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object v2

    .line 137
    .end local v1    # "fileIn":Ljava/io/InputStream;
    .end local v2    # "root":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v3, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public abstract parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation
.end method

.method public parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 4
    .param p1, "descr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 152
    .local v0, "decrIn":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    .local v2, "root":Lorg/cybergarage/xml/Node;
    return-object v2

    .line 155
    .end local v0    # "decrIn":Ljava/io/InputStream;
    .end local v2    # "root":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v3, v1}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 11
    .param p1, "locationURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 72
    .local v4, "port":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    .line 73
    const/16 v4, 0x50

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Parser;->getRootNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 78
    .local v5, "rootElem":Lorg/cybergarage/xml/Node;
    if-eqz v5, :cond_1

    .line 120
    .end local v5    # "rootElem":Lorg/cybergarage/xml/Node;
    :goto_0
    return-object v5

    .line 82
    .restart local v5    # "rootElem":Lorg/cybergarage/xml/Node;
    :cond_1
    const-string v8, "Get root node fail"

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 111
    new-instance v2, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v2}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 112
    .local v2, "httpReq":Lorg/cybergarage/http/HTTPRequest;
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v7}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, v1, v4}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v3

    .line 115
    .local v3, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    new-instance v8, Lorg/cybergarage/xml/ParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP comunication failed: no answer from peer.Unable to retrive resoure -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 117
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPResponse;->getContent()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 119
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 120
    .local v6, "strBuf":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v6}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    goto :goto_0
.end method
