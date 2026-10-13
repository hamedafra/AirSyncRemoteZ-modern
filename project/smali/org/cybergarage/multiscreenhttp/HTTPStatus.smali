.class public Lorg/cybergarage/multiscreenhttp/HTTPStatus;
.super Ljava/lang/Object;
.source "HTTPStatus.java"


# static fields
.field public static final ACCEPTED:I = 0xca

.field public static final BAD_GATEWAY:I = 0x1f6

.field public static final BAD_REQUEST:I = 0x190

.field public static final CONFLICT:I = 0x199

.field public static final CONTINUE:I = 0x64

.field public static final CREATED:I = 0xc9

.field public static final EXPECTATION_FAILED:I = 0x1a1

.field public static final FORBIDDEN:I = 0x193

.field public static final GATEWAY_TIMEOUT:I = 0x1f8

.field public static final GONE:I = 0x19a

.field public static final HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final LENGTH_REQUIRED:I = 0x19b

.field public static final METHOD_NOT_ALLOWED:I = 0x195

.field public static final NON_AUTHORITATIVE_INFORMATION:I = 0xcb

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_FOUND:I = 0x194

.field public static final NOT_IMPLEMENTED:I = 0x1f5

.field public static final NO_CONTENT:I = 0xcc

.field public static final OK:I = 0xc8

.field public static final PARTIAL_CONTENT:I = 0xce

.field public static final PAYMENT_REQUIRED:I = 0x192

.field public static final PRECONDITION_FAILED:I = 0x19c

.field public static final PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final REQUEST_TIMEOUT:I = 0x198

.field public static final REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final RESET_CONTENT:I = 0xcd

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SWITCHING_PROTOCOLS:I = 0x65

.field public static final UNAUTHORIZED:I = 0x191

.field public static final UNSUPPORTED_MEDIA_TYPE:I = 0x19f


# instance fields
.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->version:Ljava/lang/String;

    .line 224
    iput v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->statusCode:I

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 201
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setStatusCode(I)V

    .line 203
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->version:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->statusCode:I

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->set(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->version:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->statusCode:I

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p2}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setStatusCode(I)V

    .line 210
    invoke-virtual {p0, p3}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 104
    sparse-switch p0, :sswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 112
    :sswitch_0
    const-string v0, "Continue"

    goto :goto_0

    .line 115
    :sswitch_1
    const-string v0, "OK"

    goto :goto_0

    .line 118
    :sswitch_2
    const-string v0, "Bad Request"

    goto :goto_0

    .line 120
    :sswitch_3
    const-string v0, "Not Found"

    goto :goto_0

    .line 122
    :sswitch_4
    const-string v0, "Precondition Failed"

    goto :goto_0

    .line 125
    :sswitch_5
    const-string v0, "Internal Server Error"

    goto :goto_0

    .line 133
    :sswitch_6
    const-string v0, "Switching Protocols"

    goto :goto_0

    .line 136
    :sswitch_7
    const-string v0, "Created"

    goto :goto_0

    .line 138
    :sswitch_8
    const-string v0, "Accepted"

    goto :goto_0

    .line 140
    :sswitch_9
    const-string v0, "Non Authoritative Information"

    goto :goto_0

    .line 142
    :sswitch_a
    const-string v0, "No Content"

    goto :goto_0

    .line 144
    :sswitch_b
    const-string v0, "Reset Content"

    goto :goto_0

    .line 146
    :sswitch_c
    const-string v0, "Partial Content"

    goto :goto_0

    .line 149
    :sswitch_d
    const-string v0, "Unauthorized"

    goto :goto_0

    .line 151
    :sswitch_e
    const-string v0, "Payment Required"

    goto :goto_0

    .line 153
    :sswitch_f
    const-string v0, "Forbidden"

    goto :goto_0

    .line 155
    :sswitch_10
    const-string v0, "Method Not Allowed"

    goto :goto_0

    .line 157
    :sswitch_11
    const-string v0, "Not Acceptable"

    goto :goto_0

    .line 159
    :sswitch_12
    const-string v0, "Proxy Authentication Required"

    goto :goto_0

    .line 161
    :sswitch_13
    const-string v0, "Request Timeout"

    goto :goto_0

    .line 163
    :sswitch_14
    const-string v0, "Conflict"

    goto :goto_0

    .line 165
    :sswitch_15
    const-string v0, "Gone"

    goto :goto_0

    .line 167
    :sswitch_16
    const-string v0, "Length Required"

    goto :goto_0

    .line 169
    :sswitch_17
    const-string v0, "Request Entity Too Large"

    goto :goto_0

    .line 171
    :sswitch_18
    const-string v0, "Request URI Too Long"

    goto :goto_0

    .line 173
    :sswitch_19
    const-string v0, "Unsupported Media Type"

    goto :goto_0

    .line 175
    :sswitch_1a
    const-string v0, "Requested Range Not Satisfiable"

    goto :goto_0

    .line 177
    :sswitch_1b
    const-string v0, "Expectation Failed"

    goto :goto_0

    .line 180
    :sswitch_1c
    const-string v0, "Not Implemented"

    goto :goto_0

    .line 182
    :sswitch_1d
    const-string v0, "Bad Gateway"

    goto :goto_0

    .line 184
    :sswitch_1e
    const-string v0, "Service Unavailable"

    goto :goto_0

    .line 186
    :sswitch_1f
    const-string v0, "Gateway Timeout"

    goto :goto_0

    .line 188
    :sswitch_20
    const-string v0, "HTTP Version Not Supported"

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_7
        0xca -> :sswitch_8
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_b
        0xce -> :sswitch_c
        0x190 -> :sswitch_2
        0x191 -> :sswitch_d
        0x192 -> :sswitch_e
        0x193 -> :sswitch_f
        0x194 -> :sswitch_3
        0x195 -> :sswitch_10
        0x196 -> :sswitch_11
        0x197 -> :sswitch_12
        0x198 -> :sswitch_13
        0x199 -> :sswitch_14
        0x19a -> :sswitch_15
        0x19b -> :sswitch_16
        0x19c -> :sswitch_4
        0x19d -> :sswitch_17
        0x19e -> :sswitch_18
        0x19f -> :sswitch_19
        0x1a0 -> :sswitch_1a
        0x1a1 -> :sswitch_1b
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_1c
        0x1f6 -> :sswitch_1d
        0x1f7 -> :sswitch_1e
        0x1f8 -> :sswitch_1f
        0x1f9 -> :sswitch_20
    .end sparse-switch
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->statusCode:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->version:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 8
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1f4

    .line 260
    if-nez p1, :cond_1

    .line 262
    const-string v6, "1.0"

    invoke-virtual {p0, v6}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v7}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setStatusCode(I)V

    .line 264
    invoke-static {v7}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "ver":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    .local v1, "codeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 281
    .local v0, "code":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 286
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setStatusCode(I)V

    .line 292
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "code":I
    .end local v1    # "codeStr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "ver":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "set Exception"

    invoke-static {v6}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v1    # "codeStr":Ljava/lang/String;
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v5    # "ver":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 235
    iput p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->statusCode:I

    .line 236
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->version:Ljava/lang/String;

    .line 231
    return-void
.end method
