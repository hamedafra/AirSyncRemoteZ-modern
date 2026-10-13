.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$HTTPSession;,
        Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    }
.end annotation


# static fields
.field public static final HTTP_BADREQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNALERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final HTTP_NOTFOUND:Ljava/lang/String; = "404 Not Found"

.field public static final HTTP_NOTIMPLEMENTED:Ljava/lang/String; = "501 Not Implemented"

.field public static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field public static final HTTP_PARTIALCONTENT:Ljava/lang/String; = "206 Partial Content"

.field public static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final HTTP_REDIRECT:Ljava/lang/String; = "301 Moved Permanently"

.field private static final LICENCE:Ljava/lang/String; = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field private static gmtFrmt:Ljava/text/SimpleDateFormat;

.field private static theMimeTypes:Ljava/util/Hashtable;


# instance fields
.field private myRootDir:Ljava/io/File;

.field private final myServerSocket:Ljava/net/ServerSocket;

.field private myTcpPort:I

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 942
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->theMimeTypes:Ljava/util/Hashtable;

    .line 945
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "css\t\ttext/css js\t\t\ttext/javascript htm\t\ttext/html html\t\ttext/html txt\t\ttext/plain asc\t\ttext/plain pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png bmp\t\timage/bmp mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url m4a\t\taudio/mp4 aac\t\taudio/aac flac\t\taudio/x-flac wma\t\taudio/x-ms-wma amr\t\taudio/amr wav\t\taudio/wav ogg\t\taudio/x-ogg mka\t\taudio/x-matroska aif\t\taudio/x-aiff mp4\t\tvideo/mp4 mpeg\t\tvideo/mpeg 3gp\t\tvideo/3gpp 3gpp\t\tvideo/3gpp 3g2\t\tvideo/3gpp2 3gpp2\t\tvideo/3gpp2 wmv\t\tvideo/x-ms-wmv avi\t\tvideo/vnd.avi mkv\t\tvideo/x-matroska m2ts\t\tvideo/mpeg ts\t\t    video/mpeg mov\t\tvideo/quicktime flv\t\tvideo/x-msvideo rmvb\t\tvideo/rmvb m4v\t\taudio/mp4 "

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1003
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->gmtFrmt:Ljava/text/SimpleDateFormat;

    .line 1004
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->gmtFrmt:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1005
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myTcpPort:I

    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myRootDir:Ljava/io/File;

    .line 170
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myTcpPort:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myServerSocket:Ljava/net/ServerSocket;

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myThread:Ljava/lang/Thread;

    .line 184
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 185
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->gmtFrmt:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 716
    const-string v0, ""

    .line 717
    .local v0, "newUri":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/ "

    const/4 v4, 0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "tok":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 732
    .end local v2    # "tok":Ljava/lang/String;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;

    .prologue
    .line 51
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myRootDir:Ljava/io/File;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->serveFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    move-result-object v0

    return-object v0
.end method

.method public serveFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .locals 40
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "homeDir"    # Ljava/io/File;
    .param p5, "allowDirectoryListing"    # Z

    .prologue
    .line 751
    const/16 v28, 0x0

    .line 754
    .local v28, "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->isDirectory()Z

    move-result v34

    if-nez v34, :cond_0

    .line 755
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "500 Internal Server Error"

    const-string v35, "text/plain"

    const-string v36, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_0
    if-nez v28, :cond_3

    .line 761
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    sget-char v35, Ljava/io/File;->separatorChar:C

    const/16 v36, 0x2f

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 762
    const/16 v34, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    if-ltz v34, :cond_1

    .line 763
    const/16 v34, 0x0

    const/16 v35, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 766
    :cond_1
    const-string v34, ".."

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2

    const-string v34, ".."

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2

    const-string v34, "../"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    if-ltz v34, :cond_3

    .line 767
    :cond_2
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: Won\'t serve ../ for security reasons."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_3
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    .local v11, "f":Ljava/io/File;
    if-nez v28, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_4

    .line 773
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "404 Not Found"

    const-string v35, "text/plain"

    const-string v36, "Error 404, file not found."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_4
    if-nez v28, :cond_19

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v34

    if-eqz v34, :cond_19

    .line 781
    const-string v34, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_5

    .line 783
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 784
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "301 Moved Permanently"

    const-string v35, "text/html"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "<html><body>Redirected: <a href=\""

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\">"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "</a></body></html>"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "Location"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_5
    if-nez v28, :cond_19

    .line 793
    new-instance v34, Ljava/io/File;

    const-string v35, "index.html"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_9

    .line 794
    new-instance v11, Ljava/io/File;

    .end local v11    # "f":Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/index.html"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "f":Ljava/io/File;
    move-object/from16 v29, v28

    .line 857
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .local v29, "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :goto_0
    if-nez v29, :cond_18

    .line 860
    const/16 v22, 0x0

    .line 861
    .local v22, "mime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x2e

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 862
    .local v10, "dot":I
    if-ltz v10, :cond_6

    .line 863
    sget-object v34, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v35

    add-int/lit8 v36, v10, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 864
    :cond_6
    if-nez v22, :cond_7

    .line 865
    const-string v22, "application/octet-stream"

    .line 868
    :cond_7
    const-wide/16 v32, 0x0

    .line 869
    .local v32, "startFrom":J
    const-wide/16 v12, -0x1

    .line 870
    .local v12, "endAt":J
    const-string v34, "range"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 871
    .local v25, "range":Ljava/lang/String;
    if-eqz v25, :cond_8

    .line 873
    const-string v34, "bytes="

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 875
    const-string v34, "bytes="

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 876
    const/16 v34, 0x2d

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v23

    .line 878
    .local v23, "minus":I
    if-lez v23, :cond_8

    .line 880
    const/16 v34, 0x0

    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 881
    add-int/lit8 v34, v23, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 889
    .end local v23    # "minus":I
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 890
    .local v14, "fileLen":J
    if-eqz v25, :cond_16

    const-wide/16 v34, 0x0

    cmp-long v34, v32, v34

    if-ltz v34, :cond_16

    .line 892
    cmp-long v34, v32, v14

    if-ltz v34, :cond_13

    .line 894
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    const-string v34, "416 Requested Range Not Satisfiable"

    const-string v35, "text/plain"

    const-string v36, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 895
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :try_start_3
    const-string v34, "Content-Range"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bytes 0-0/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 935
    .end local v10    # "dot":I
    .end local v12    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v22    # "mime":Ljava/lang/String;
    .end local v25    # "range":Ljava/lang/String;
    .end local v32    # "startFrom":J
    :goto_2
    const-string v34, "Accept-Ranges"

    const-string v35, "bytes"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return-object v28

    .line 795
    :cond_9
    new-instance v34, Ljava/io/File;

    const-string v35, "index.htm"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_a

    .line 796
    new-instance v11, Ljava/io/File;

    .end local v11    # "f":Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/index.htm"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "f":Ljava/io/File;
    move-object/from16 v29, v28

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_0

    .line 798
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_a
    if-eqz p5, :cond_12

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v34

    if-eqz v34, :cond_12

    .line 800
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 801
    .local v16, "files":[Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "<html><body><h1>Directory "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</h1><br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 803
    .local v24, "msg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_b

    .line 805
    const/16 v34, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 806
    .local v31, "u":Ljava/lang/String;
    const/16 v34, 0x2f

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    .line 807
    .local v30, "slash":I
    if-ltz v30, :cond_b

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 808
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<b><a href=\""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    add-int/lit8 v36, v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\">..</a></b><br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 811
    .end local v30    # "slash":I
    .end local v31    # "u":Ljava/lang/String;
    :cond_b
    if-eqz v16, :cond_11

    .line 813
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 815
    new-instance v6, Ljava/io/File;

    aget-object v34, v16, v18

    move-object/from16 v0, v34

    invoke-direct {v6, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 816
    .local v6, "curFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    .line 817
    .local v7, "dir":Z
    if-eqz v7, :cond_c

    .line 819
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 820
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v35, v16, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v16, v18

    .line 823
    :cond_c
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<a href=\""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, v16, v18

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\">"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    aget-object v35, v16, v18

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</a>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 827
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 829
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 830
    .local v20, "len":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " &nbsp;<font size=2>("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 831
    const-wide/16 v34, 0x400

    cmp-long v34, v20, v34

    if-gez v34, :cond_f

    .line 832
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " bytes"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 838
    :goto_4
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")</font>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 840
    .end local v20    # "len":J
    :cond_d
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "<br/>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 841
    if-eqz v7, :cond_e

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</b>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 813
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 833
    .restart local v20    # "len":J
    :cond_f
    const-wide/32 v34, 0x100000

    cmp-long v34, v20, v34

    if-gez v34, :cond_10

    .line 834
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/16 v36, 0x400

    div-long v36, v20, v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/16 v36, 0x400

    rem-long v36, v20, v36

    const-wide/16 v38, 0xa

    div-long v36, v36, v38

    const-wide/16 v38, 0x64

    rem-long v36, v36, v38

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " KB"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4

    .line 836
    :cond_10
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v36, 0x100000

    div-long v36, v20, v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v36, 0x100000

    rem-long v36, v20, v36

    const-wide/16 v38, 0xa

    div-long v36, v36, v38

    const-wide/16 v38, 0x64

    rem-long v36, v36, v38

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " MB"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_4

    .line 844
    .end local v6    # "curFile":Ljava/io/File;
    .end local v7    # "dir":Z
    .end local v18    # "i":I
    .end local v20    # "len":J
    :cond_11
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "</body></html>"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 845
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "200 OK"

    const-string v35, "text/html"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    move-object/from16 v29, v28

    .line 846
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_0

    .line 849
    .end local v16    # "files":[Ljava/lang/String;
    .end local v24    # "msg":Ljava/lang/String;
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_12
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: No directory listing."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    move-object/from16 v29, v28

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_0

    .line 899
    .restart local v10    # "dot":I
    .restart local v12    # "endAt":J
    .restart local v14    # "fileLen":J
    .restart local v22    # "mime":Ljava/lang/String;
    .restart local v25    # "range":Ljava/lang/String;
    .restart local v32    # "startFrom":J
    :cond_13
    const-wide/16 v34, 0x0

    cmp-long v34, v12, v34

    if-gez v34, :cond_14

    .line 900
    const-wide/16 v34, 0x1

    sub-long v12, v14, v34

    .line 901
    :cond_14
    sub-long v34, v12, v32

    const-wide/16 v36, 0x1

    add-long v26, v34, v36

    .line 902
    .local v26, "newLen":J
    const-wide/16 v34, 0x0

    cmp-long v34, v26, v34

    if-gez v34, :cond_15

    const-wide/16 v26, 0x0

    .line 904
    :cond_15
    move-wide/from16 v8, v26

    .line 905
    .local v8, "dataLen":J
    :try_start_4
    new-instance v17, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v8, v9}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$2;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/io/File;J)V

    .line 908
    .local v17, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, v17

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 910
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    const-string v34, "206 Partial Content"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 911
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :try_start_5
    const-string v34, "Content-Length"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v34, "Content-Range"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bytes "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 930
    .end local v8    # "dataLen":J
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "newLen":J
    :catch_0
    move-exception v19

    .line 932
    .end local v10    # "dot":I
    .end local v12    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v25    # "range":Ljava/lang/String;
    .end local v32    # "startFrom":J
    .local v19, "ioe":Ljava/io/IOException;
    :goto_5
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    const-string v34, "403 Forbidden"

    const-string v35, "text/plain"

    const-string v36, "FORBIDDEN: Reading file failed."

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_2

    .line 917
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v10    # "dot":I
    .restart local v12    # "endAt":J
    .restart local v14    # "fileLen":J
    .restart local v25    # "range":Ljava/lang/String;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v32    # "startFrom":J
    :cond_16
    :try_start_6
    const-string v34, "HEAD"

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 919
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    const-string v34, "200 OK"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 920
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :try_start_7
    const-string v34, "Content-Length"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 924
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :cond_17
    :try_start_8
    new-instance v28, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;

    const-string v34, "200 OK"

    new-instance v35, Ljava/io/FileInputStream;

    move-object/from16 v0, v35

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 925
    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :try_start_9
    const-string v34, "Content-Length"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 930
    .end local v10    # "dot":I
    .end local v12    # "endAt":J
    .end local v14    # "fileLen":J
    .end local v25    # "range":Ljava/lang/String;
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .end local v32    # "startFrom":J
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    :catch_1
    move-exception v19

    move-object/from16 v28, v29

    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_5

    .line 884
    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v10    # "dot":I
    .restart local v12    # "endAt":J
    .restart local v23    # "minus":I
    .restart local v25    # "range":Ljava/lang/String;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v32    # "startFrom":J
    :catch_2
    move-exception v34

    goto/16 :goto_1

    .end local v10    # "dot":I
    .end local v12    # "endAt":J
    .end local v22    # "mime":Ljava/lang/String;
    .end local v23    # "minus":I
    .end local v25    # "range":Ljava/lang/String;
    .end local v32    # "startFrom":J
    :cond_18
    move-object/from16 v28, v29

    .end local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_2

    :cond_19
    move-object/from16 v29, v28

    .end local v28    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    .restart local v29    # "res":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer$Response;
    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 196
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    goto :goto_0
.end method
