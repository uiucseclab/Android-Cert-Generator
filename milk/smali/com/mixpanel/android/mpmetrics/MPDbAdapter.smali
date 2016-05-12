.class Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.super Ljava/lang/Object;
.source "MPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;,
        Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    }
.end annotation


# static fields
.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String;

.field private static final CREATE_PEOPLE_TABLE:Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "mixpanel"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EVENTS_TIME_INDEX:Ljava/lang/String;

.field public static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field private static final PEOPLE_TIME_INDEX:Ljava/lang/String;


# instance fields
.field private final mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " STRING NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_PEOPLE_TABLE:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->EVENTS_TIME_INDEX:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->PEOPLE_TIME_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v0, "mixpanel"

    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-direct {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    .line 110
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_PEOPLE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->EVENTS_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->PEOPLE_TIME_INDEX:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addJSON(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I
    .locals 9
    .param p1, "j"    # Lorg/json/JSONObject;
    .param p2, "table"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .prologue
    .line 120
    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "tableName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 126
    .local v1, "count":I
    :try_start_0
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 128
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v6, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_0
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 154
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "MixpanelAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addJSON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FAILED. Deleting DB."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_1
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->deleteDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_2
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v6}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    goto :goto_0

    .line 149
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_3
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    throw v6
.end method

.method public cleanupEvents(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "table"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .prologue
    .line 187
    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "tableName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created_at <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 203
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanupEvents "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by time FAILED. Deleting DB."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->deleteDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    goto :goto_0

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    throw v3
.end method

.method public cleanupEvents(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
    .locals 6
    .param p1, "last_id"    # Ljava/lang/String;
    .param p2, "table"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "tableName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 179
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanupEvents "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by id FAILED. Deleting DB."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->deleteDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    goto :goto_0

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    throw v3
.end method

.method public deleteDB()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->deleteDatabase()V

    .line 207
    return-void
.end method

.method public generateDataString(Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)[Ljava/lang/String;
    .locals 12
    .param p1, "table"    # Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .prologue
    const/4 v7, 0x0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 221
    .local v2, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .line 222
    .local v6, "last_id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "tableName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 226
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT * FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ORDER BY "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "created_at"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ASC LIMIT 50"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 228
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v0, "arr":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 232
    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 235
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, "j":Lorg/json/JSONObject;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    .end local v5    # "j":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 242
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 255
    :cond_2
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 262
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const/4 v9, 0x1

    aput-object v2, v7, v9

    .line 265
    :cond_4
    return-object v7

    .line 245
    :catch_1
    move-exception v4

    .line 246
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v9, "MixpanelAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateDataString "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    const/4 v6, 0x0

    .line 253
    const/4 v2, 0x0

    .line 255
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 255
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->mDb:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 256
    if-eqz v1, :cond_5

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9
.end method
