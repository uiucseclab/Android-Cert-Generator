.class public Lcom/crashlytics/android/CrashTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashAsyncTask(J)V
    .locals 4
    .param p1, "delayMs"    # J

    .prologue
    .line 42
    new-instance v0, Lcom/crashlytics/android/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/j;-><init>(Lcom/crashlytics/android/CrashTest;J)V

    .line 54
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public indexOutOfBounds()V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    const/16 v1, 0xa

    aget v0, v0, v1

    .line 34
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Out of bounds value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public stackOverflow()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashTest;->stackOverflow()V

    .line 26
    return-void
.end method

.method public throwFiveChainedExceptions()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    const-string v0, "1"

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "2"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :catch_1
    move-exception v0

    .line 67
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "3"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    :catch_2
    move-exception v0

    .line 70
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "4"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    :catch_3
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "5"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public throwRuntimeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
