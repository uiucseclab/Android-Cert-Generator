.class final Lcom/google/android/exoplayer/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "nodex_upgrading_message_string"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

.field private final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Z

.field private final e:[Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, "ExoPlayerImpl"

    const-string v2, "Init 1.4.2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    .line 59
    iput v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    .line 60
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 61
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    .line 62
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    aput-boolean v3, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImpl$1;-><init>(Lcom/google/android/exoplayer/ExoPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/os/Handler;Z[ZII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    return v0
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:[Z

    aput-boolean p2, v0, p1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(J)V

    .line 145
    return-void
.end method

.method final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Z

    check-cast v0, [Z

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 200
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    iget v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(ZI)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 207
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    iget v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(ZI)V

    goto :goto_1

    .line 212
    :pswitch_2
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->h:I

    .line 213
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->h:I

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 221
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 222
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 223
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    goto :goto_3

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    if-eq v0, p1, :cond_0

    .line 123
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->h:I

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 127
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(ZI)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 100
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d()V

    .line 150
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e()V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 10

    .prologue
    const-wide/16 v0, 0x64

    const-wide/16 v8, -0x1

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->g()J

    move-result-wide v2

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->e()J

    move-result-wide v4

    .line 187
    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    :goto_1
    long-to-int v0, v0

    goto :goto_0

    :cond_2
    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_1
.end method
