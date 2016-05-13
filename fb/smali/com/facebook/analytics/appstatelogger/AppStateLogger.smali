.class public Lcom/facebook/analytics/appstatelogger/AppStateLogger;
.super Ljava/lang/Object;
.source "volume_increase"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Lcom/facebook/analytics/appstatelogger/AppStateLogger;


# instance fields
.field public final c:Ljava/io/File;

.field private final d:Lcom/facebook/analytics/appstatelogger/AppState;

.field private final e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/common/process/ProcessName;Ljava/io/File;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.Thread.start"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->c:Ljava/io/File;

    .line 59
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-direct {v0, p1}, Lcom/facebook/analytics/appstatelogger/AppState;-><init>(Lcom/facebook/common/process/ProcessName;)V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->d:Lcom/facebook/analytics/appstatelogger/AppState;

    .line 60
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->d:Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-direct {v0, v1, p2}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;-><init>(Lcom/facebook/analytics/appstatelogger/AppState;Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    .line 62
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    invoke-virtual {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->start()V

    .line 63
    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/facebook/common/process/ProcessName;)V
    .locals 7

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->b:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An application has already been registered with AppStateLogger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 134
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 136
    const-string v0, "state_logs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 141
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    invoke-direct {v0, p1, v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;-><init>(Lcom/facebook/common/process/ProcessName;Ljava/io/File;)V

    .line 143
    .line 79
    new-instance v6, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;

    invoke-direct {v6, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;-><init>(Lcom/facebook/analytics/appstatelogger/AppStateLogger;)V

    .line 81
    invoke-virtual {v6, p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$AppStateActivityLifecycleCallbacks;->a(Landroid/app/Application;)V

    .line 82
    .line 147
    invoke-static {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLoggerExceptionHandler;->a(Lcom/facebook/analytics/appstatelogger/AppStateLogger;)V

    .line 151
    const-string v1, "appstatelogger"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {v2}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a(Ljava/io/File;)V

    .line 159
    invoke-static {}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f()V

    .line 161
    sput-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->b:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v1, "Application state logging is only support in Ice Cream Sandwich builds and above"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->registerWithNativeCrashHandler(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static c()Ljava/io/File;
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->b:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No application has been registered with AppStateLogger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->b:Lcom/facebook/analytics/appstatelogger/AppStateLogger;

    .line 66
    iget-object v2, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->c:Ljava/io/File;

    move-object v0, v2

    return-object v0
.end method

.method private static f()V
    .locals 3

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->registerStreamWithBreakpad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "registerAppStateLoggerStreamWithBreakpad failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static native registerStreamWithBreakpad(Ljava/lang/String;)V
.end method

.method private static native registerWithNativeCrashHandler(Ljava/lang/String;)V
.end method

.method public static final native setBreakpadStreamData([B)V
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    invoke-virtual {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    invoke-virtual {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v2, "Interrupted joining worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->d:Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-virtual {v3}, Lcom/facebook/analytics/appstatelogger/AppState;->a()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v3

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v3, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->a:Ljava/lang/String;

    const-string v4, "Activity %s changed state to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {p2}, Lcom/facebook/analytics/appstatelogger/ActivityState;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    .line 97
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 98
    iget v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    .line 105
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    if-lez v3, :cond_2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->e:Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;

    iget-object v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->d:Lcom/facebook/analytics/appstatelogger/AppState;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$PersistToDiskThread;->a(Lcom/facebook/analytics/appstatelogger/AppState;Z)V

    .line 109
    return-void

    .line 99
    :cond_3
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 100
    iget v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->f:I

    goto :goto_0
.end method
