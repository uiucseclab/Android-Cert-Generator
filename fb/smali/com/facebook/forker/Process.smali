.class public final Lcom/facebook/forker/Process;
.super Ljava/lang/Process;
.source "thread_view_dismiss"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final SD_DEVNULL:I = -0x3

.field public static final SD_INHERIT:I = -0x2

.field public static final SD_PIPE:I = -0x4

.field public static final SD_STDOUT:I = -0x5

.field public static final SIGCONT:I = 0x12

.field public static final SIGKILL:I = 0x9

.field public static final SIGSTOP:I = 0x13

.field public static final SIGTERM:I = 0xf

.field public static final SIGTSTP:I = 0x14

.field public static final STATUS_EXITED:I = 0x4

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_STOPPED:I = 0x2

.field public static final STDERR:I = 0x2

.field public static final STDIN:I = 0x0

.field public static final STDOUT:I = 0x1

.field public static final WAIT_RESULT_RUNNING:I = -0x7ffffffe

.field public static final WAIT_RESULT_STOPPED:I = -0x7fffffff

.field public static final WAIT_RESULT_TIMEOUT:I = -0x80000000


# instance fields
.field private mChildStderr:Ljava/io/InputStream;

.field private mChildStdin:Ljava/io/OutputStream;

.field private mChildStdout:Ljava/io/InputStream;

.field private mExitStatus:I

.field private mPid:I

.field private mProcessStatus:I

.field private mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "forker"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[B[I[I)V
    .locals 9
    .param p3    # [B
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x6

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 153
    const/4 v1, 0x0

    .line 155
    iput v8, p0, Lcom/facebook/forker/Process;->mPid:I

    .line 156
    new-instance v0, Lcom/facebook/forker/Process$WaiterThread;

    invoke-direct {v0, p0}, Lcom/facebook/forker/Process$WaiterThread;-><init>(Lcom/facebook/forker/Process;)V

    iput-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    .line 159
    const/4 v0, 0x6

    :try_start_0
    new-array v7, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v2

    .line 160
    :goto_0
    if-ge v0, v5, :cond_0

    .line 161
    const/4 v1, -0x1

    :try_start_1
    aput v1, v7, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 164
    :goto_1
    if-ge v0, v5, :cond_3

    .line 165
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v1}, Lcom/facebook/forker/Process;->nativeUnixPipe([I)[I

    move-result-object v1

    .line 169
    if-nez v0, :cond_1

    .line 170
    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v4, v1, v4

    aput v4, v7, v3

    .line 171
    const/4 v3, 0x1

    const/4 v4, 0x0

    aget v1, v1, v4

    aput v1, v7, v3

    .line 164
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 173
    :cond_1
    add-int/lit8 v3, v0, 0x0

    const/4 v4, 0x0

    aget v4, v1, v4

    aput v4, v7, v3

    .line 174
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    aget v1, v1, v4

    aput v1, v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 218
    :catchall_0
    move-exception v0

    move-object v1, v7

    move v6, v8

    :goto_3
    invoke-static {v6}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 219
    invoke-static {v1}, Lcom/facebook/forker/Process;->unixClose([I)V

    .line 221
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 222
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 223
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 224
    iget v1, p0, Lcom/facebook/forker/Process;->mPid:I

    if-eq v1, v8, :cond_2

    .line 225
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/facebook/forker/Process;->kill(I)V

    .line 226
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->nativeWait()V

    :cond_2
    throw v0

    .line 178
    :cond_3
    const/4 v0, 0x6

    :try_start_2
    new-array v4, v0, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    move v6, v8

    .line 179
    :goto_4
    const/4 v0, 0x3

    if-ge v1, v0, :cond_4

    .line 183
    :try_start_3
    aget v0, p5, v1

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 199
    :goto_5
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    aput v0, v4, v3

    .line 200
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput v1, v4, v0

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_0
    move v0, v1

    .line 187
    goto :goto_5

    .line 189
    :pswitch_1
    if-ne v6, v8, :cond_7

    .line 190
    const-string v0, "/dev/null"

    invoke-static {v0}, Lcom/facebook/forker/Process;->nativeUnixOpen(Ljava/lang/String;)I

    move-result v0

    :goto_6
    move v6, v0

    .line 193
    goto :goto_5

    .line 195
    :pswitch_2
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v7, v0

    goto :goto_5

    :cond_4
    move v0, v2

    .line 203
    :goto_7
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    .line 204
    aget v1, p5, v0

    const/4 v2, -0x5

    if-ne v1, v2, :cond_5

    .line 205
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    aget v2, v4, v2

    aput v2, v4, v1

    .line 203
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/facebook/forker/Process;->nativeLaunch(Ljava/lang/String;[Ljava/lang/String;[B[I[I)I

    move-result v0

    iput v0, p0, Lcom/facebook/forker/Process;->mPid:I

    .line 210
    iget-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PidWaiter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/forker/Process;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/forker/Process$WaiterThread;->setName(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    aget v1, v7, v1

    invoke-static {v1}, Lcom/facebook/forker/Process;->fdMagicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    .line 212
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x2

    aget v1, v7, v1

    invoke-static {v1}, Lcom/facebook/forker/Process;->fdMagicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    .line 213
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x4

    aget v1, v7, v1

    invoke-static {v1}, Lcom/facebook/forker/Process;->fdMagicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    .line 214
    iget-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    invoke-virtual {v0}, Lcom/facebook/forker/Process$WaiterThread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    invoke-static {v6}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 219
    invoke-static {v7}, Lcom/facebook/forker/Process;->unixClose([I)V

    .line 220
    return-void

    .line 218
    :catchall_1
    move-exception v0

    move v6, v8

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_3

    :cond_7
    move v0, v6

    goto :goto_6

    .line 183
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static describeStatus(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    if-gez p0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "killed by signal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 60
    :cond_0
    if-lez p0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exited with status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "exited successfully"

    goto :goto_0
.end method

.method private static fdMagicName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeKill(I)V
.end method

.method private native nativeLaunch(Ljava/lang/String;[Ljava/lang/String;[B[I[I)I
    .param p3    # [B
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeUnixClose(I)V
.end method

.method private static native nativeUnixOpen(Ljava/lang/String;)I
.end method

.method private static native nativeUnixPipe([I)[I
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0    # Ljava/io/Closeable;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-class v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suppressing close error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static unixClose(I)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/facebook/forker/Process;->nativeUnixClose(I)V

    .line 117
    :cond_0
    return-void
.end method

.method private static unixClose([I)V
    .locals 2
    .param p0    # [I
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    if-eqz p0, :cond_0

    .line 121
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 122
    aget v1, p0, v0

    invoke-static {v1}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->destroy()V

    .line 270
    return-void
.end method

.method public final destroy()V
    .locals 2

    .prologue
    .line 243
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 244
    const/4 v0, 0x0

    .line 247
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    invoke-virtual {v1}, Lcom/facebook/forker/Process$WaiterThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 258
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 259
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 260
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 265
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final exitValue()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->exitValueEx()I

    move-result v0

    .line 275
    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit16 v0, v0, 0x80

    :cond_0
    return v0
.end method

.method public final declared-synchronized exitValueEx()I
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process has not yet terminated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/forker/Process;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/forker/Process;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getPid()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/facebook/forker/Process;->mPid:I

    return v0
.end method

.method public final kill(I)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/facebook/forker/Process;->nativeKill(I)V

    .line 239
    return-void
.end method

.method public final native nativeWait()V
.end method

.method public final declared-synchronized waitFor()I
    .locals 2

    .prologue
    .line 314
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->exitValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized waitFor(II)I
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 333
    monitor-enter p0

    .line 335
    :cond_0
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    and-int/2addr v2, p2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 339
    if-lez p1, :cond_1

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 341
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 345
    :goto_1
    if-lez p1, :cond_0

    .line 346
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 347
    int-to-long v4, p1

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 348
    const/4 p1, 0x0

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 350
    :cond_2
    long-to-int v2, v2

    sub-int/2addr p1, v2

    .line 352
    goto :goto_0

    .line 355
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 356
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :pswitch_1
    const v0, -0x7ffffffe

    .line 369
    :goto_2
    monitor-exit p0

    return v0

    .line 360
    :pswitch_2
    const v0, -0x7fffffff

    goto :goto_2

    .line 362
    :pswitch_3
    :try_start_2
    iget v0, p0, Lcom/facebook/forker/Process;->mExitStatus:I

    goto :goto_2

    .line 368
    :cond_4
    if-nez p1, :cond_5

    .line 369
    const/high16 v0, -0x80000000

    goto :goto_2

    .line 372
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process entered unexpected state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final waitForUninterruptibly()I
    .locals 2

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 380
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 389
    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 393
    :cond_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0
.end method

.method public final waitForUninterruptibly(II)I
    .locals 10

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    const/high16 v0, -0x80000000

    .line 399
    const-wide/16 v4, 0x0

    move v2, p1

    .line 402
    :cond_0
    if-lez v2, :cond_1

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 406
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/facebook/forker/Process;->waitFor(II)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 407
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_3

    .line 424
    :goto_0
    if-eqz v1, :cond_2

    .line 425
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 428
    :cond_2
    return v0

    .line 411
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    .line 412
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 414
    :cond_3
    if-lez v2, :cond_4

    .line 415
    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 416
    int-to-long v8, v2

    cmp-long v3, v8, v6

    if-gez v3, :cond_5

    .line 417
    const/4 v2, 0x0

    .line 422
    :cond_4
    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    .line 419
    :cond_5
    long-to-int v3, v6

    sub-int/2addr v2, v3

    goto :goto_1
.end method
