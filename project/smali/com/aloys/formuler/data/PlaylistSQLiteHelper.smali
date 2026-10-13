.class public Lcom/aloys/formuler/data/PlaylistSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlaylistSQLiteHelper.java"


# static fields
.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_METADATA:Ljava/lang/String; = "metadata"

.field public static final COL_TITLE:Ljava/lang/String; = "title"

.field public static final COL_TYPE:Ljava/lang/String; = "type"

.field public static final COL_URL:Ljava/lang/String; = "url"

.field private static final DATABASE_CREATE_PLAYLIST_ITEM:Ljava/lang/String; = "create table PlaylistItems( _id integer primary key autoincrement, title text not null, url text not null, type text not null, metadata text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "playlists.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static PLALYLISTITEM_ALLCOLUMNS:[Ljava/lang/String; = null

.field public static final TABLE_PLAYLIST_ITEMS:Ljava/lang/String; = "PlaylistItems"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "metadata"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aloys/formuler/data/PlaylistSQLiteHelper;->PLALYLISTITEM_ALLCOLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string v0, "playlists.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    const-string v0, "create table PlaylistItems( _id integer primary key autoincrement, title text not null, url text not null, type text not null, metadata text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 36
    const-string v0, "DROP TABLE IF EXISTS PlaylistItems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/data/PlaylistSQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    return-void
.end method
