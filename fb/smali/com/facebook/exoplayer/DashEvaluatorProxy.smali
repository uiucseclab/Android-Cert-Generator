.class public Lcom/facebook/exoplayer/DashEvaluatorProxy;
.super Ljava/lang/Object;
.source "photo_album"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatEvaluator;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Z

.field private final c:Lcom/facebook/exoplayer/VideoPlayerService;

.field private final d:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/exoplayer/DashEvaluatorProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->b:Z

    .line 31
    iput-object p1, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->c:Lcom/facebook/exoplayer/VideoPlayerService;

    .line 32
    iput-object p2, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->d:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->c:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->d:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception when enable evaluator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DashEvaluatorProxy evaluate with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " formats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    array-length v1, p4

    new-array v4, v1, [Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    .line 71
    array-length v1, p4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 72
    aget-object v0, p4, v0

    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 76
    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_2

    .line 77
    aget-object v1, p4, v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Format ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer/chunk/Format;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitrate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kbps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/google/android/exoplayer/chunk/Format;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    new-instance v2, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    invoke-direct {v2, v1}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;-><init>(Lcom/google/android/exoplayer/chunk/Format;)V

    aput-object v2, v4, v0

    .line 82
    iget-object v2, v1, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->c:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->d:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/chunk/MediaChunk;

    .line 90
    new-instance v5, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;

    invoke-direct {v5, v2}, Lcom/facebook/exoplayer/ipc/VideoPlayerMediaChunk;-><init>(Lcom/google/android/exoplayer/chunk/MediaChunk;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception when do dash evalution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 92
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluation format before evaluate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evaluation queueSize before evaluate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    new-instance v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;

    invoke-direct {v5}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;-><init>()V

    .line 96
    iget v2, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    iput v2, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->a:I

    .line 97
    iget-object v2, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_4

    .line 98
    new-instance v2, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget-object v3, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    invoke-direct {v2, v3}, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;-><init>(Lcom/google/android/exoplayer/chunk/Format;)V

    iput-object v2, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->c:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    :cond_4
    move-wide v2, p2

    .line 100
    invoke-interface/range {v0 .. v5}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->a(Ljava/util/List;J[Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;)V

    .line 105
    iget-object v0, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->c:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    if-eqz v0, :cond_5

    .line 106
    iget v0, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->a:I

    iput v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->a:I

    .line 107
    iget v0, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->b:I

    iput v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->b:I

    .line 108
    iget-object v0, v5, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamEvaluation;->c:Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;

    iget-object v0, v0, Lcom/facebook/exoplayer/ipc/VideoPlayerStreamFormat;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/Format;

    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 112
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DashEvaluatorProxy choose "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget v1, v1, Lcom/google/android/exoplayer/chunk/Format;->c:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 110
    :cond_5
    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, p5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->c:Lcom/google/android/exoplayer/chunk/Format;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->c:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v1, p0, Lcom/facebook/exoplayer/DashEvaluatorProxy;->d:Lcom/facebook/exoplayer/ipc/VideoPlayerSession;

    invoke-virtual {v0, v1}, Lcom/facebook/exoplayer/VideoPlayerService;->a(Lcom/facebook/exoplayer/ipc/VideoPlayerSession;)Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/exoplayer/ipc/VideoPlayerServiceListener;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception when disable evaluator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
