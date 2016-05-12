.class Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MPDatabaseHelper"
.end annotation


# instance fields
.field private final mDatabaseFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->mDatabaseFile:Ljava/io/File;

    .line 69
    return-void
.end method


# virtual methods
.method public deleteDatabase()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->close()V

    .line 76
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$MPDatabaseHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 77
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 81
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MixpanelAPI"

    const-string v1, "Creating a new Mixpanel events DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_EVENTS_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_PEOPLE_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->EVENTS_TIME_INDEX:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->PEOPLE_TIME_INDEX:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 91
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MixpanelAPI"

    const-string v1, "Upgrading app, replacing Mixpanel events DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_EVENTS_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->CREATE_PEOPLE_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->EVENTS_TIME_INDEX:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    # getter for: Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->PEOPLE_TIME_INDEX:Ljava/lang/String;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method
